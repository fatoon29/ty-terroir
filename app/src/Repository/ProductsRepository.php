<?php

namespace App\Repository;

use App\Entity\Products;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class ProductsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Products::class);
    }
    
    public function findProducts(){

        $qb = $this->getEntityManager()
            ->createQueryBuilder()
            ->select('p')
            ->from('App\Entity\Products', 'p')
            ->join('p.producer', 'c')
            ->join('c.distributions', 'd')
            ->where('d.id = :id')
            ->setParameter('id', 1)
            ;
        $result = $qb->getQuery()->getResult();
        return $result;
    }
    

}
