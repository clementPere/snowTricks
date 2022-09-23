<?php

namespace App\Controller;

use App\Entity\Commentary;
use App\Entity\Media;
use App\Entity\Trick;
use App\Form\CommentaryType;
use App\Form\TrickType;
use DateTimeImmutable;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\Validator\Validator\ValidatorInterface;

class TrickController extends AbstractController
{

    private ManagerRegistry $em;
    private PaginatorInterface $paginator;

    public function __construct(ManagerRegistry $em, PaginatorInterface $paginator)
    {
        $this->em = $em;
        $this->paginator = $paginator;
    }

    #[Route('/create-trick', name: 'create_trick')]
    #[Security("is_granted('ROLE_USER')")]
    public function createTrick(Request $request, EntityManagerInterface $em, SluggerInterface $slugger, ValidatorInterface $validator): Response
    {
        //On set le media
        $media = new Media;
        $media->setUser($this->getUser());
        //On set le trick avec le media
        $trick = new Trick;
        $trick->setCreatedAt(new DateTimeImmutable('now'))
            ->setUser($this->getUser());
        $trick->getMedias()->add($media);

        $form = $this->createForm(TrickType::class, $trick);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $file = null;
            $getUrl = null;
            if ($request->files->get('trick')['medias'][0]['fileMedia'] !== null) {
                $file = $request->files->get('trick')['medias'][0]['fileMedia'];
            }
            if ($form->getData()->getMedias()[0]->getUrl() !== null) {
                $getUrl = $form->getData()->getMedias()[0]->getUrl();
            }
            //Si il y a un fichier dans la requête et pas d'url
            if ($file and !$getUrl) {
                $media->setFileName($this->uploadFile($request, $slugger))
                    ->setType(['image']);
            }
            //Si il y a une url dans la requête et pas de fichier
            if ($getUrl and !$file) {
                if ($this->getTypeOfMedia($getUrl) == ['image']) {
                    $media->setUrl($getUrl)
                        ->setType($this->getTypeOfMedia($getUrl));
                } else {
                    $media->setUrl($this->refactoYoutubeVideoUrl($getUrl))
                        ->setType($this->getTypeOfMedia($getUrl));
                }
            }
            //Si il y a les deux dans la requête
            if ($getUrl and $file) {
                $em->persist($this->newMedia($trick, '', $this->uploadFile($request, $slugger), $file->getClientOriginalExtension()));
                if ($this->getTypeOfMedia($getUrl) == ['image']) {
                    $media->setUrl($getUrl)
                        ->setType($this->getTypeOfMedia($getUrl));
                } else {
                    $media->setUrl($this->refactoYoutubeVideoUrl($getUrl))
                        ->setType($this->getTypeOfMedia($getUrl));
                }
            }
            $trick->setSlug($trick->getName());
            $media->setTrick($trick);
            $errors = $validator->validate([$trick, $media]);
            if (count($errors) > 0) {
                return $this->render('trick/new.html.twig', [
                    'controller_name' => 'TrickController',
                    'form' => $form->createView(),
                    'urlError' => true
                ]);
            }
            $this->addFlash(
                'notice',
                'La figure : ' . $trick->getName() . ' à bien été ajouté'
            );
            $em->persist($trick, $media);
            $em->flush();

            $this->checkMedia($em);
            return $this->redirectToRoute('app_home');
        }
        return $this->render('trick/new.html.twig', [
            'controller_name' => 'TrickController',
            'form' => $form->createView()
        ]);
    }

    #[Route('/modifier/{slug}', name: 'update_trick')]
    #[IsGranted('ROLE_USER')]
    public function updateTrick(Trick $trick, EntityManagerInterface $em, Request $request, ValidatorInterface $validator): Response
    {
        $form = $this->createForm(TrickType::class, $trick);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $trick = $form->getData();
            $trick->setUpdatedAt(new DateTimeImmutable())
                ->setSlug($trick->getName());
            $errors = $validator->validate($trick->getMedias());
            if (count($errors) > 0) {
                $errorsString = (string) $errors;
                throw new \Exception($errorsString);
            }

            $em->persist($trick);
            $em->flush();
            return $this->redirectToRoute('show_trick', ['slug' => $trick->getSlug()]);
        }
        return $this->render('trick/new.html.twig', [
            'form' => $form->createView()
        ]);
    }

    #[Route('/detail/{slug}', name: 'show_trick')]
    public function getDetailTrick(Trick $trick, Request $request): Response
    {
        $trick = $this->em->getRepository(Trick::class)->find($trick);
        $form = $this->getCommentaryForm($trick, $request);
        return $this->render('trick/detail.html.twig', [
            'trick' => $trick,
            'commentaries' => $this->getAllCommentary($request, $trick->getId()),
            'form' => $form,
        ]);
    }

    #[Route('/delete-trick/{slug}', name: 'delete_trick')]
    #[IsGranted('ROLE_USER')]
    public function deleteTrick(Trick $trick): Response
    {
        $em = $this->em->getManager();
        $getTrick = $this->em->getRepository(Trick::class)->find($trick);
        $this->addFlash(
            'notice',
            'la figure "' . $getTrick->getName() . '" à bien été supprimé'
        );
        $em->getRepository(Trick::class)->remove($getTrick);
        $em->flush();
        return $this->redirectToRoute('app_home');
    }

    private function addNewData($data)
    {
        $this->em->getManager()->persist($data);
        $this->em->getManager()->flush();
        $this->addFlash(
            'notice',
            'Commentaire ajouté'
        );
        return $this->redirectToRoute('show_trick', ['slug' => $data->getTrick()->getSlug()]);
    }

    private function newMedia(Trick $trick, string $url = '', string $fileName = '', string $extension = ''): Media
    {
        $media = new Media;
        $media->setUser($this->getUser())
            ->setType($this->getTypeOfMedia($url))
            ->setTrick($trick)
            ->setUrl($url)
            ->setFileName($fileName);
        return $media;
    }

    private function getAllCommentary(Request $request, int $trickId)
    {
        $data = $this->em->getRepository(Commentary::class)->findBy(['trick' => $trickId], ['created_at' => 'DESC']);
        return $this->paginator->paginate($data, $request->query->getInt("page", 1), 10);
    }

    private function getCommentaryForm($trick, Request $request)
    {
        $comment = new Commentary();
        $comment->setCreatedAt(new DateTimeImmutable())
            ->setUser($this->getUser())
            ->setTrick($trick);
        $form = $this->createForm(CommentaryType::class, $comment);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $this->addNewData($comment);
        }
        return $form->createView();
    }
    private function uploadFile(Request $request, SluggerInterface $slugger)
    {
        $file = $request->files->get('trick')['medias'][0]['fileMedia'];
        $originalFilename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
        $safeFilename = $slugger->slug($originalFilename);
        $newFilename = $safeFilename . '-' . uniqid() . '.' . $file->guessExtension();
        try {
            $file->move(
                $this->getParameter('media_directory'),
                $newFilename
            );
        } catch (FileException $e) {
            return $e->getMessage();
        }
        return $newFilename;
    }

    private function getTypeOfMedia($url): array
    {
        if (str_contains($url, 'https://www.youtube.com/watch?v=')) {
            return ['video'];
        } else {
            return ['image'];
        }
    }

    private function refactoYoutubeVideoUrl($url)
    {
        if (str_contains($url, 'https://www.youtube.com/watch?v=')) {
            $url = str_replace("watch?v=", "embed/", $url);
            return substr($url, 0, strpos($url, "&"));
        }
        throw new \Exception('Erreur pour l\'adresse "' . $url . '" url non valide');
    }

    private function checkMedia(EntityManagerInterface $em): void
    {
        $arrayMedia = $em->getRepository(Media::class)->findAll();
        foreach ($arrayMedia as $media) {
            if ($media->getUrl() === null and $media->getFileName() === null) {
                $em->remove($media);
                $em->flush();
            }
        }
    }
}
