<?php

namespace App\Controller\Security;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use App\Service\CheckIfConnected;

class LoginController extends AbstractController
{
    public function __construct(private CheckIfConnected $checkIfConnected)
    {
    }

    #[Route('/connexion', name: 'app_login')]
    public function index(AuthenticationUtils $authenticationUtils, Request $request): Response
    {
        if ($this->checkIfConnected->index()) {
            $this->addFlash('notice', 'Vous êtes déjà connecté !');
            return $this->redirectToRoute('app_home');
        }


        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();

        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('login/index.html.twig', [
            'last_username' => $lastUsername,
            'error'         => $error,
            'back_to_your_page' => $request->headers->get('referer')
        ]);
    }
}
