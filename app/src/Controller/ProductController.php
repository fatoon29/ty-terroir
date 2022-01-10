<?php

namespace App\Controller;

use App\Entity\Products;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("/produits", name="product_")
 */
class ProductController extends AbstractController
{
    /**
     * @Route("/liste", name="list")
     */
    public function index(EntityManagerInterface $em): Response
    {
        $distributionId = $_GET["distribution"];

        // $products = $this->getDoctrine()->getRepository(Products::class)->findAll();

        $products = $em->getRepository(Products::class)->findProducts();
        dd($products);

        return $this->render('product/list.html.twig',[
            'products' => $products
        ]);
    }
}
