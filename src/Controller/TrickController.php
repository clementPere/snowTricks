<?php

namespace App\Controller;

use App\Entity\Commentary;
use App\Entity\Trick;
use App\Form\CommentaryType;
use App\Form\TrickType;
use DateTimeImmutable;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TrickController extends AbstractController
{
    #[Route('/create-trick', name: 'app_trick')]
    public function index(Request $request, EntityManagerInterface $em): Response
    {
        $trick = new Trick;
        $form = $this->createForm(TrickType::class, $trick);

        $form->handleRequest($request);
        $trick->setCreatedAt(new DateTimeImmutable('now'))
            ->setUser($this->getUser())
            ->setSlug(str_replace(" ", "-", $trick->getName()));



        if ($form->isSubmitted() && $form->isValid()) {
            $em->persist($trick);
            $em->flush();
            return $this->redirectToRoute('app_home');
        }
        return $this->render('trick/new.html.twig', [
            'controller_name' => 'TrickController',
            'form' => $form->createView()
        ]);
    }
}
