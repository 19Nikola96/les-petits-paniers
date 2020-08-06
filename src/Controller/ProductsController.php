<?php

namespace App\Controller;

use App\Entity\Products;
use App\Entity\Users;
use App\Form\RegistrationFormType;
use App\Repository\ProductsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class ProductsController extends AbstractController
{
    /**
     * @Route("/product/{id}")
     */
    public function index(ProductsRepository $productRepository, $id)
    {
        $product = $productRepository ->find($id);

        return $this->render('products/index.html.twig', [
            'product' => $product
        ]);
    }


    /**
     * @Route("/products/liste")
     */
    public function liste(ProductsRepository $productsRepository)
    {
        $liste = $productsRepository ->findAll();

        return $this->render('products/liste.html.twig', [
            'liste' => $liste]);
    }


}
