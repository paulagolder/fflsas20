<?php

namespace App\Repository;

use App\Entity\IncidentType;
#use Doctrine\Bundle\DoctrineBundle\Repository\EntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;
use Doctrine\ORM\EntityRepository;

class IncidentTypeRepository extends EntityRepository
{

    public function findOne($typeid)
    {
       $qb = $this->createQueryBuilder("it");
       $qb->andWhere('it.itypeid = :tid');
       $qb->setParameter('tid', $typeid);
       $type =  $qb->getQuery()->getOneOrNullResult();
       return $type;
    }

    public function xgetMaxTypeid()
    {
        $sql = "select MAX(a.itypeid) from App:incidenttype a ";
        $query = $this->getEntityManager()->createQuery($sql);
        $maxitype = $query->getOneOrNullResult();
        return $maxitype[1];

    }

}
