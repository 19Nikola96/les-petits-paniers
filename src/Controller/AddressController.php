<?php

namespace App\Controller;

use App\Entity\Address;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class AddressController extends AbstractController
{
    /**
     * @Route("/address", name="address")
     */
    public function index()
    {
        $address = new Address();
        return $this->render('address/index.html.twig', [
            'controller_name' => 'AddressController',
        ]);
    }
}
