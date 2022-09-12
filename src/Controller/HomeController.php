<?php

namespace App\Controller;

use App\Entity\Commentary;
use App\Entity\Trick;
use App\Form\CommentaryType;
use DateTimeImmutable;
use Doctrine\ORM\EntityManagerInterface;
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



    private function getAllTricks(Request $request)
    {
        $data = $this->em->getRepository(Trick::class)->findAll();
        return $this->paginator->paginate($data, $request->query->getInt("page", 1), 8);
    }
}
