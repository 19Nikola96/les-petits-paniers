<?php

namespace App\Controller;

use App\Entity\Products;
use App\Entity\Users;
use App\Form\RegistrationFormType;
use App\Repository\CategoryRepository;
use App\Repository\ProductsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class ProductsController extends AbstractController
{
    /**
     * @Route("/products", name="products")
     */
    public function index(ProductsRepository $productsRepository)
    {
        $products = $productsRepository ->findAll();

        return $this->render('products/index.html.twig', [
            'products' => $products
        ]);
    }


}
