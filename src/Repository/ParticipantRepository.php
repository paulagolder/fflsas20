<?php

namespace App\Repository;

use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Mapping as ORM;

use App\Entity\participant;
use App\Entity\Person;

use Doctrine\ORM\EntityRepository;

use Symfony\Bridge\Doctrine\RegistryInterface;
use Doctrine\DBAL\DriverManager;
use Doctrine\ORM\EntityManagerInterface;

use Doctrine\DBAL\Driver\Connection;


class ParticipantRepository extends EntityRepository
{






    public function findAll()
    {
       $sql = " select p.*  from App:participant p ";
      $query = $this->getEntityManager()->createQuery($sql);
      $participations = $query->getResult();

       foreach( $participations as $participation )
       {
          $url = "/admin/participant/detail/".$participation->getParticipationId();
          $participation->link = $url;
          $participation->label = $participation->getEventid().":".$participation->getPersonid();
       }
       return $participations;

    }



    public function findOne($participationid)
    {
    # paul to fix simplify with join


       $sql = " select p  from App:participant p  where p.participationid = ".$participationid;
      $query = $this->getEntityManager()->createQuery($sql);
      $participations = $query->getResult();
      $participation = $participations[0];
      # $manager = $this->getEntityManager();
       $conn =  $this->getEntityManager()->getConnection();
       $persons = $conn->query("select * from person where personid  =".$participation->getpersonid())->fetchAll();
       $person = $persons[0];
     //  $person->fixPerson();
       $participation->label = $person['surname'];

       return $participation;
    }


    public function findParticipants($eventid)
    {
      $sql = " select p.personid,pl.surname,pl.forename  ,p.rank, p.role from App:participant p ";
      $sql .= " join App\Entity\Person pl WITH pl.personid = p.personid " ;
      $sql .= " where p.eventid = ".$eventid;
      $sql .= " order by pl.surname ASC ";
      $query = $this->getEntityManager()->createQuery($sql);
      $participations = $query->getResult();

       $participants = array();
       $p=0;
       foreach( $participations as $participation )
       {
         $participants[$p]['link'] = "";
         $participants[$p]['eventid']= $eventid;
         $participants[$p]['personid']= $participation['personid'];
         $fname = $participation['surname'];
         if($participation['forename'] )
         {
            $fname .= ", ".$participation['forename'] ;
         }
         $participants[$p]['label'] = $fname;
         $participants[$p]['rank'] = $participation['rank'];
         $participants[$p]['role'] = $participation['role'];;
         $p++;
       }
       return $participants;

    }


    public function findParticipations($personid)
    {
      $sql = "select p from App:participant p ,App:Event e ";
      $sql .= " where p.personid = ".$personid." and p.eventid=e.eventid ";
      $sql .= " order by e.startdate ";
      $query = $this->getEntityManager()->createQuery($sql);
      $participations = $query->getResult();

       foreach( $participations as $participation )
       {
          $url = "/admin/participant/detail/".$participation->getParticipationId();
          $participation->link = $url;
          $participation->label = $participation->getEventid();
       }
       return $participations;
    }

      public function findParticipationsbyEntityPerson($eventid, $personid)
    {
      $sql = " select p, pl from App:participant p ";
      $sql .= " join App\Entity\Person pl WITH pl.personid = p.personid " ;
      $sql .= " where p.eventid = ".$eventid;
      $sql .= " and p.personid = ".$personid;
      $sql .= " order by pl.surname ASC ";
      $query = $this->getEntityManager()->createQuery($sql);
      $participations = $query->getResult();
      foreach( $participations as $participation )
      {

         # $participation->label = $participation->geteventid();
      }
      return $participations;
    }

    public function deleteOne($participationid)
    {
       $sql= 'delete FROM  App\Entity\Participant p where p.participationid = '.$participationid;
       $query = $this->getEntityManager()->createQuery($sql);
       $numDeleted = $query->execute();
       return $numDeleted;
    }
}
