<?php

namespace App\Controller;

use App\Entity\Category;
use App\Repository\CategoryRepository;
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
    public function index()
    {
        return $this->render('admin_products/index.html.twig', [
            'products' => $products,
        ]);
    }


    public function edit(Request $request,
                         EntityManagerInterface $entityManager,
                         ProductsRepository $productsRepository,
                         $id)
    {
        if(is_null($id))// création
        {
            $product = new Product();
        }
        else // modification
        {
            $product = $productsRepository->find($id);
        }
    }




}
