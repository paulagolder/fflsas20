<?php

// src/Controller/NewsController.php


namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Cookie;
use Symfony\Component\Translation\Translator;
use Symfony\Component\Translation\Loader\ArrayLoader;
use  App\Controller\Security;

use App\Service\MyLibrary;

use App\Controller\LinkrefController;

class NewsController extends AbstractController
{
    private $lang="fr";
    private $mylib;
    private $requestStack ;

    public function __construct( MyLibrary $mylib ,RequestStack $request_stack)
    {
        $this->mylib = $mylib;
        $this->requestStack = $request_stack;;
    }




    public function findnews()
    {

        $sec =0;
        $this->lang = $this->requestStack->getCurrentRequest()->getLocale();
        $max = 10;
        $news=    $this->getDoctrine()->getRepository("App:Content")->findNews($max);
     //   usort($news, function($a, $b) {
    //        return $b['date'] <=> $a['date'];
    //    });
      //  $output = array_slice($news, 0, $max);
        return $this->render('news/show.html.twig',
        ['lang'=>$this->lang,
        'newsitems'=> $news,
        ]);
    }
}
