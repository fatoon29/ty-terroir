<?php

namespace App\Controller;

use App\Entity\Association;
use App\Entity\Distribution;
use App\Entity\Subscription;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("/association", name="association_")
 * @IsGranted("ROLE_USER")
 */
class AssociationController extends AbstractController
{
    /**
     * @Route("/", name="index")
     */
    public function index(): Response
    {
        $subscriptions = $this->getDoctrine()->getRepository(Subscription::class)->findBy(['member' => $this->getUser()->getId()]);
  
        $associations = [];
        foreach ($subscriptions as $subscription){
            $association = $this->getDoctrine()->getRepository(Association::class)->findBy(['id' => $subscription->getAssociation()->getId()]); 

            array_push($associations, $association[0]);
        }

        return $this->render('association/index.html.twig',[
            'associations' => $associations
        ]);
    }

    
    /**
     * @Route("/detail/{slug}", name="single", methods={"GET"})
     */
    public function singleAssociation(Association $association): Response
    {

        $distributions = $this->getDoctrine()->getRepository(Distribution::class)->findBy(['association' => $association->getId()]); 

        return $this->render('association/single.html.twig', [
            'association' => $association,
            'distributions' => $distributions
        ]);
    }
}
