<?php

namespace App\Controller;


use App\Entity\Products;
use App\Form\ProductType;
use App\Repository\ProductsRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class AdminProductsController extends AbstractController
{
    /**
     * @Route("/admin/products", name="admin_products")
     */
    public function index(ProductsRepository $productsRepository)
    {
        $products = $productsRepository->findAll();
        return $this->render('admin_products/index.html.twig', [
            'products' => $products,
        ]);
    }

    /**
     * @Route("/admin/edition-product/{id}", defaults={"id": null}, requirements ={"id": "\d+"})
     */
    public function edit(Request $request,
                         EntityManagerInterface $entityManager,
                         ProductsRepository $productsRepository,
                         $id)
    {
        if (is_null($id)) {
            $product = new products();
        } else // modification
        {
            $product = $productsRepository->find($id);
        }



        $form = $this->createForm(ProductType::class, $product);

        $form->handleRequest($request);

        if ($form->isSubmitted()) {

            if ($form->isValid()) {

                $entityManager->persist($product);
                $entityManager->flush();

                return $this->redirectToRoute('app_adminproducts_edit');
            }
        }

        return $this->render(
            'admin_products/edit.html.twig',
            [
                'form' => $form->createView()
            ]
        );
    }



    /**
     * @Route("/admin/suppression/categorie/{id}", requirements ={"id": "\d+"})
     */
    public function delete(Products $products, EntityManagerInterface $entityManager)
    {
        $entityManager->remove($products);
        $entityManager->flush();

        return $this->redirectToRoute('app_adminproducts_delete');
    }

}
