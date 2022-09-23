<?php

namespace App\Service;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class CheckIfConnected extends AbstractController
{
    public function index(): bool
    {
        if ($this->container->get('security.authorization_checker')->isGranted('IS_AUTHENTICATED_FULLY')) {
            return true;
        }
        return false;
    }
}
