<?php

namespace App\Controller;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Entity\event;
use App\Entity\person;

class LibraryController extends AbstractController
{
    /**
     * @Route("/library", name="library")
     */
    public function index()
     {
         return $this->render('event/index.html.twig', [
         'controller_name' => 'EventController',
         ]);
     }

    static public function xgetText($text_ar,$attribute,$language)
    {
     if( array_key_exists ( $language , $text_ar[$attribute] ))return $text_ar[$attribute][$language] ;
      //if($text_ar[$attribute][$language] ) return $text_ar[$attribute][$language] ;
      if( array_key_exists ( "FR" , $text_ar[$attribute] )) return $text_ar[$attribute]["FR"] ;
      if($text_ar[$attribute]["EN"] ) return $text_ar[$attribute]["EN"] ;
      return "No text found";
    }

    static public function xgetTexts($text_ar,$attribute)
    {
      if($text_ar[$attribute]) return $text_ar[$attribute] ;
      return "No text found";
    }

     public function getLabel($objecttype, $objid, $lang)
    {

      $language = strtoupper($lang);
        switch ($objecttype)
        {
            case "person":
                $person = $this->getDoctrine()->getRepository('App:Person')->findOne($objid);
                $label = $person->getFullname();
                break;
            case "event":
                $event = $this->getDoctrine()->getRepository('App:Event')->findOne($objid);
                $label = $event->getLabel();
                break;
            case "image":
                  $image = $this->getDoctrine()->getRepository('App:Image')->findOne($objid);
                $label = $image->getName();
                break;
            case "linkref":
                $ref = $this->getDoctrine()->getRepository('App:Linkref')->findOne($objid);
                $label = $ref->getLabel();
                break;
            default:
                $label =  "no label found for "+$objecttype+" :"+$objectid;
        }
        return $label;
    }

}
