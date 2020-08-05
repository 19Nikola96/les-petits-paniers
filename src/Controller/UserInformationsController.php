<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class UserInformationsController extends AbstractController
{
    /**
     * @Route("/user/informations", name="user_informations")
     */
    public function index()
    {
        return $this->render('user_informations/user_info.html.twig', [
            'controller_name' => 'UserInformationsController',
        ]);
    }
}
