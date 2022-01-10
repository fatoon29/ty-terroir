<?php

namespace App\Repository;

use App\Entity\Products;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Test|null find($id, $lockMode = null, $lockVersion = null)
 * @method Test|null findOneBy(array $criteria, array $orderBy = null)
 * @method Test[]    findAll()
 * @method Test[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ProductsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Products::class);
    }
    
    public function findProducts(){
        $em = $this->getEntityManager();
        $query = $em->createQuery("
            SELECT p
            FROM App\Entity\Products p
            JOIN p.producer c
            JOIN c.distributions d
            WHERE c.id = p.id
            ");
        $objects = $query->getResult();

        return $objects;
    }
    

}
