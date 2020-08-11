<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class PaymentPathController extends AbstractController
{
    /**
     * @Route("/payment/path")
     */
    public function index()
    {
        return $this->render('payment_path/index.html.twig', [
            'controller_name' => 'PaymentPathController',
        ]);
    }

    /**
     * @Route("/payment/path2")
     */
    public function index2()
    {
        return $this->render('payment_path/index2.html.twig', [
            'controller_name' => 'PaymentPathController',
        ]);
    }
}
