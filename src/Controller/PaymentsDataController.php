<?php

namespace App\Controller;

use App\Entity\PaymentsData;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PaymentsDataController extends AbstractController
{
    /**
     * @Route("/payments/data", name="payments_data")
     */
    public function payment(Request $request): Response
    {
        $payment = new PaymentsData();
        $form = $this->createForm(PaymentsData::class, $payment);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid())
        {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($payment);
            $entityManager->flush();

            return $this->redirectToRoute('/');
        }


        return $this->render('payments_data/index.html.twig', [
            'controller_name' => 'PaymentsDataController',
        ]);
    }
}
