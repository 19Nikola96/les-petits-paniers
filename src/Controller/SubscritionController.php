<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class SubscritionController extends AbstractController
{
    /**
     * @Route("/subscrition", name="subscrition")
     */
    public function index()
    {
        return $this->render('subscrition/index.html.twig', [
            'controller_name' => 'SubscritionController',
        ]);
    }
}
