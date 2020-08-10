<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class PaymentPathController extends AbstractController
{
    /**
     * @Route("/payment/path", name="payment_path")
     */
    public function index()
    {
        return $this->render('payment_path/index.html.twig', [
            'controller_name' => 'PaymentPathController',
        ]);
    }
}
