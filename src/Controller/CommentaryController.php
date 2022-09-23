<?php

namespace App\Controller;

use App\Entity\Commentary;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;

class CommentaryController extends AbstractController
{

    private ManagerRegistry $em;

    public function __construct(ManagerRegistry $em)
    {
        $this->em = $em;
    }


    #[Route('/delete-commentary/{id}', name: 'delete_comment')]
    #[Security("is_granted('ROLE_ADMIN') or user === commentary.getUser()", message: "Vous n'avez pas les droits suffisants")]
    public function deleteComment(int $id, Commentary $commentary): Response
    {
        $em = $this->em->getManager();
        $commentary = $this->em->getRepository(Commentary::class)->find($id);
        $this->addFlash(
            'success',
            'Commentaire supprimé !'
        );
        $em->getRepository(Commentary::class)->remove($commentary);
        $em->flush();
        return $this->redirectToRoute('show_trick', ['slug' => $commentary->getTrick()->getSlug()]);
    }
}
