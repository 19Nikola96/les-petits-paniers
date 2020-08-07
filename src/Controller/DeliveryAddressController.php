<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class DeliveryAddressController extends AbstractController
{
    /**
     * @Route("/delivery/address", name="delivery_address")
     */
    public function index()
    {
        return $this->render('delivery_address/index.html.twig', [
            'controller_name' => 'DeliveryAddressController',
        ]);
    }
}
