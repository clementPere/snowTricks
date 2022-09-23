<?php

namespace App\Controller\Security;

use App\Form\ResetPasswordType;
use App\Repository\UserRepository;
use App\Service\CheckIfConnected;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Mime\Address;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class ResetPasswordController extends AbstractController
{

    public function __construct(private UserRepository $userRepository, private MailerInterface $mailer, private CheckIfConnected $checkIfConnected)
    {
    }

    #[Route('/security/reset/password', name: 'app_security_reset_password')]
    public function index(Request $request, EntityManagerInterface $em, UserPasswordHasherInterface $passwordHasher): Response
    {
        if ($this->checkIfConnected->index()) {
            $this->addFlash('danger', 'Vous êtes déjà connecté !');
            return $this->redirectToRoute('app_home');
        }
        $user = $this->userRepository->findOneBy(["email" => $_GET['email']]);
        $form = $this->createForm(ResetPasswordType::class, $user);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $newPassword = $form->getData()->getPassword();

            $hashedPassword = $passwordHasher->hashPassword($user, $newPassword);
            $user->setPassword($hashedPassword);
            $em->persist($user);
            $em->flush();
            $this->addFlash('success', 'La modification à réussi ! Vous pouvez maintenant essayer de vous connecter avec votre nouveau mot de passe.');
            return $this->redirectToRoute('app_login');
        }
        return $this->renderForm('reset_password/index.html.twig', [
            'form' => $form
        ]);
    }

    #[Route('/security/get-email', name: 'app_security_get_username')]
    public function getUsername(): Response
    {
        if ($this->checkIfConnected->index()) {
            $this->addFlash('danger', 'Vous êtes déjà connecté !');
            return $this->redirectToRoute('app_home');
        }
        return $this->render('reset_password/get_email.html.twig', []);
    }

    #[Route('/security/send-email', name: 'app_security_send_email')]
    public function verifyAndSendEmail(Request $request): RedirectResponse
    {
        if ($this->checkIfConnected->index()) {
            $this->addFlash('danger', 'Vous êtes déjà connecté !');
            return $this->redirectToRoute('app_home');
        }
        $route = 'app_security_get_username';
        if ($this->verifyEmail($request->get('_email'))) {
            $route = 'app_home';
        }
        return $this->redirectToRoute($route);
    }

    private function verifyEmail(string $email)
    {
        $user = $this->userRepository->findOneBy(["email" => $email]);
        if ($user) {
            $this->sendEmail($email);
            return true;
        }
        $this->addFlash('danger', 'Aucun compte avec cette adresse trouvé');
        return false;
    }

    private function sendEmail(string $email): void
    {
        $newEmail = (new TemplatedEmail())
            ->from(new Address('snow_trick@gmail.com', 'snowTrick'))
            ->to($email)
            ->subject('Réinitialiser le mot de passe')
            ->text('Sending emails is fun again!')
            ->htmlTemplate('reset_password/email.html.twig')
            ->context([
                'expiration_date' => new \DateTime('+1 hour', new \DateTimeZone('Europe/Paris')),
                'emailAdress' => $email,
            ]);
        $this->mailer->send($newEmail);
        $this->addFlash('success', 'Un email vous a été envoyé à l\'adresse ' . $email);
    }
}
