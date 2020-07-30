<?php

namespace App\Controller;

use App\Entity\Delivery;
use App\Form\DeliveryDataType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class DeliveryDataController extends AbstractController
{
    /**
     * @Route("/delivery/data", name="delivery_data")
     */
    public function index()
    {
        $delivery = new Delivery();

        $form = $this->createForm(DeliveryDataType::class, $delivery);

        return $this->render('delivery_data/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
