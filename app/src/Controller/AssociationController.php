<?php

namespace App\Controller;

use App\Entity\Association;
use App\Entity\Distribution;
use App\Entity\Subscription;
use App\Form\DistributionType;
use App\Entity\OrderDescription;
use Symfony\Component\HttpFoundation\Request;
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
            if($subscription->getStatus() == 'published'):
                $association = $this->getDoctrine()->getRepository(Association::class)->findBy(['id' => $subscription->getAssociation()->getId()]); 
            endif;

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

    /**
     * @Route("/distribution/{id}", name="distribution")
     */
    public function singleDistribution(Distribution $distribution, Request $request): Response
    {   
        
        $form = $this->createForm(DistributionType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted()):

            $userOrder = $this->getDoctrine()->getRepository(OrderDescription::class)->findOneBy(array('member' => $this->getUser(), 'distribution' => $distribution->getId()));
            if($userOrder == null):
            $order = new OrderDescription();
            
            $order->setDistribution($distribution);
            $order->setMember($this->getUser());
            
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($order);
            $entityManager->flush();
            else:
                $orderId = $userOrder->getId();
            endif;

            return $this->redirectToRoute('product_list', ['distribution' => $distribution->getId()]);

        endif;

        return $this->render('association/distribution.html.twig', [
            'distribution' => $distribution,
            'form' => $form->createView(),
        ]);
    }


}
