<?php

// src/Controller/RandomimageController.php


namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Cookie;
use Symfony\Component\Translation\Translator;
use Symfony\Component\Translation\Loader\ArrayLoader;
use App\Entity\Image;
use App\Service\MyLibrary;

use App\Controller\LinkrefController;

class RandomimageController extends AbstractController
{
    private $lang="fr";
    private $mylib;
    private $requestStack ;

    public function __construct( MyLibrary $mylib ,RequestStack $request_stack)
    {
        $this->mylib = $mylib;
        $this->requestStack = $request_stack;;
    }




    public function randomimage()
    {

      $this->lang = $this->requestStack->getCurrentRequest()->getLocale();
      #  $request = new Request();

        $images =    $this->getDoctrine()->getRepository("App:Image")->findAllPublic();
        $icount = count($images);
        $number = mt_rand(0, $icount);
        $image =   $images[$number];
        $this->mylib->setFullpath($image);
        $image->link = "/".$this->lang."/image/".$image->getImageid();
        $text_ar =  $this->getDoctrine()->getRepository("App:Text")->findGroup('image',$image->getImageId());
        $title =  $this->mylib->selectText($text_ar,'title',$this->lang);

         return $this->render('randomimage/showone.html.twig',
                   ['lang'=>$this->lang,
                     'image'=> $image,
                     'title'=>$title,
                     ]);
    }
}
