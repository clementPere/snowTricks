<?php

namespace App\Controller;

use App\Entity\Commentary;
use App\Entity\Trick;
use App\Form\CommentaryType;
use DateTimeImmutable;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Entity;

class HomeController extends AbstractController
{

    private ManagerRegistry $em;
    private PaginatorInterface $paginator;

    public function __construct(ManagerRegistry $em, PaginatorInterface $paginator)
    {
        $this->em = $em;
        $this->paginator = $paginator;
    }

    #[Route('/', name: 'app_home')]
    public function index(Request $request): Response
    {
        return $this->render('home/index.html.twig', [
            'tricks' => $this->getAllTricks($request),
        ]);
    }

    #[Route('/trick/{slug}', name: 'show_trick')]
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


    #[Route('/trick/{id}', name: 'update_trick')]
    #[IsGranted('ROLE_USER')]
    public function updateTrick(int $id): Response
    {
        $trick = $this->em->getRepository(Trick::class)->find($id);
        return $this->render('trick/update.html.twig', [
            'trick' => $trick
        ]);
    }


    #[Route('/delete-trick/{id}', name: 'delete_trick')]
    #[IsGranted('ROLE_USER')]
    public function deleteTrick(int $id): Response
    {
        $em = $this->em->getManager();
        $getTrick = $this->em->getRepository(Trick::class)->find($id);
        $this->addFlash(
            'notice',
            'la figure "' . $getTrick->getName() . '" à bien été supprimé'
        );
        $em->getRepository(Trick::class)->remove($getTrick);
        $em->flush();
        return $this->redirectToRoute('app_home');
    }

    private function getAllTricks(Request $request)
    {
        $data = $this->em->getRepository(Trick::class)->findAll();
        return $this->paginator->paginate($data, $request->query->getInt("page", 1), 8);
    }

    private function getAllCommentary(Request $request, int $trickId)
    {
        $data = $this->em->getRepository(Commentary::class)->findBy(['trick' => $trickId]);
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

    private function addNewData($data)
    {
        $this->em->getManager()->persist($data);
        $this->em->getManager()->flush();
        return $this->redirectToRoute('show_trick', ['id' => $data->getTrick()->getId()]);
    }
}
