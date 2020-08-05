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
                         Products $productsRepository,
                         $id)
    {
        if (is_null($id)) {
            $product = new product();
        } else // modification
        {
            $product = $productsRepository->find($id);
        }


        // Création du formulaire lié à l'entité Catégory //
        $form = $this->createForm(ProductType::class, $product);

        $form->handleRequest($request);

        // si le form à été envoyé //
        if ($form->isSubmitted()) {
            // si la validation des annotations @assert dans l'entité passe
            if ($form->isValid()) {
                //enregistrement de la catégorie bdd //
                $entityManager->persist($product);
                $entityManager->flush();

                // Redirection vers la liste //
                return $this->redirectToRoute('app_adminproduct_index');
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

        return $this->redirectToRoute('app_adminproduct_index');
    }

}
