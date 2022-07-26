<?php

namespace App\Controller;

use App\Entity\Trick;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;

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

    private function getAllTricks(Request $request)
    {
        $data = $this->em->getRepository(Trick::class)->findAll();
        return $this->paginator->paginate($data, $request->query->getInt("page", 1), 8);
    }

    #[Route('/trick/{id}', name: 'show_trick')]
    public function getDetailTrick(int $id): Response
    {

        $trick = $this->em->getRepository(Trick::class)->find($id);

        return $this->render('trick/detail.html.twig', [
            'trick' => $trick
        ]);
    }


    #[Route('/trick/{id}', name: 'update_trick')]
    public function updateTrick(int $id): Response
    {
        $trick = $this->em->getRepository(Trick::class)->find($id);
        return $this->render('trick/update.html.twig', [
            'trick' => $trick
        ]);
    }

    #[Route('/delete/{id}', name: 'delete_trick')]
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
}
