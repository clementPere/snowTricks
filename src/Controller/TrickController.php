<?php

namespace App\Controller;

use App\Entity\Media;
use App\Entity\Trick;
use App\Form\TrickType;
use DateTimeImmutable;
use Doctrine\ORM\EntityManagerInterface;
use Exception;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Component\HttpFoundation\File\File;

class TrickController extends AbstractController
{
    #[Route('/create-trick', name: 'app_trick')]
    #[Security("is_granted('ROLE_USER')")]
    public function index(Request $request, EntityManagerInterface $em, SluggerInterface $slugger): Response
    {
        $trick = new Trick;
        $media = new Media;
        $media->setUser($this->getUser());
        $trick->setCreatedAt(new DateTimeImmutable('now'))
            ->setUser($this->getUser());
        $trick->getMedias()->add($media);
        $form = $this->createForm(TrickType::class, $trick);
        $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid()) {


            //Si il y a un fichier dans la requête et pas d'url
            if ($request->files->get('trick')['medias'][0]['fileMedia'] and !$form->getData()->getMedias()[0]->getUrl()) {
                $file = $request->files->get('trick')['medias'][0]['fileMedia'];
                $media->setFileName($this->uploadFile($request, $slugger))
                    ->setType(['image']);
            }

            //Si il y a une url dans la requête et pas de fichier
            if ($form->getData()->getMedias()[0]->getUrl() and !$request->files->get('trick')['medias'][0]['fileMedia']) {
                $getUrl = $form->getData()->getMedias()[0]->getUrl();
                $media->setUrl($this->refactoYoutubeVideoUrl($getUrl))
                    ->setType(['video']);
            }

            //Si il y a les deux dans la requête
            if ($form->getData()->getMedias()[0]->getUrl() and $request->files->get('trick')['medias'][0]['fileMedia']) {
                $file = $request->files->get('trick')['medias'][0]['fileMedia'];
                $getUrl = $form->getData()->getMedias()[0]->getUrl();
                $em->persist($this->newMedia($trick, '', $this->uploadFile($request, $slugger), $file->getClientOriginalExtension()));
                $media->setUrl($this->refactoYoutubeVideoUrl($getUrl))
                    ->setType(['video']);
            }

            $trick->setSlug($trick->getName());
            $media->setTrick($trick);
            $em->persist($trick, $media);
            $em->flush();
            return $this->redirectToRoute('app_home');
        }
        return $this->render('trick/new.html.twig', [
            'controller_name' => 'TrickController',
            'form' => $form->createView()
        ]);
    }


    private function newMedia(Trick $trick, string $url = '', string $fileName = '', string $extension = ''): Media
    {
        $media = new Media;
        $media->setUser($this->getUser())
            ->setType($this->getTypeOfMedia($extension))
            ->setTrick($trick)
            ->setUrl($url)
            ->setFileName($fileName);
        return $media;
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

    private function getTypeOfMedia($extension): array
    {
        if ($extension == 'jpg' or $extension == 'jpeg' or $extension == 'png') {
            return ['image'];
        } else {
            return ['video'];
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
}
