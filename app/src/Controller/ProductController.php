<?php

namespace App\Controller;

use App\Entity\Producer;
use App\Entity\Products;
use App\Entity\Distribution;
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
    public function index(): Response
    {
        $distributionId = $_GET["distribution"];
        $distribution = $this->getDoctrine()->getRepository(Distribution::class)->findOneBy(['id' => $distributionId]); 

        $productsArray = [];
        $products = [];

        foreach($distribution->getProducers() as $producer):
            $producerData = $this->getDoctrine()->getRepository(Producer::class)->findOneBy(['id' => $producer]); 
            $product = $this->getDoctrine()->getRepository(Products::class)->findBy(['producer' => $producerData->getId()]); 
            array_push($productsArray, $product);
        endforeach;

        foreach($productsArray as $product):
            foreach($product as $p){
                array_push($products, $p);
            }
        endforeach;

        // $products = $em->getRepository(Products::class)->findProducts();
        // dd($products);

        return $this->render('product/list.html.twig',[
            'products' => $products
        ]);
    }


    
}
