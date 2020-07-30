<?php

namespace App\Controller;

//use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Symfony\Contracts\Translation\TranslatorInterface;

use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Mime\Address;

use App\Entity\Message;
use App\Service\MyLibrary;

use App\Controller\LinkrefController;
use App\Form\Type\MessageForm;
use App\Form\Type\UserMessageForm;
use App\Form\Type\VisitorMessageForm;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;


use Symfony\Component\HttpFoundation\RequestStack;

class MessageController extends AbstractController
{


  private $requestStack ;
  private $lang="fr";
  private $mylib;
  private $trans;
  private $mailer;
  private $params;

  public function __construct( MyLibrary $mylib,RequestStack $request_stack,TranslatorInterface $translator , ParameterBagInterface $params,MailerInterface $mailer )
  {
    $this->mylib = $mylib;
    $this->requestStack = $request_stack;
    $this->trans =$translator;
    $this->params = $params;
    $this->mailer = $mailer;
  }

  public function createMessageToAdmin(Request $request )
  {
    $user = $this->getUser();
    if($user)
    {
      return $this->createUserMessageToAdmin($request )  ;
    }
    else
    {
      return $this->createVisitorMessageToAdmin($request )  ;
    }
  }

  public function createUserMessageToAdmin(Request $request )
  {
    $user = $this->getUser();
    $message = new Message($this->getParameter('admin-name'), $this->getParameter('admin-email'),$user->getUsername(),$user->getEmail() ,"", "");
    $form = $this->createForm(UserMessageForm::class, $message);
    $form->handleRequest($request);
    if($form->isSubmitted() &&  $form->isValid())
    {
      $this->sendMessageToUserCopytoAdministrators($message,$user->getUserid(), $user->getLang());
      return $this->render('message/usermessage.html.twig',array(
        'message'=>$message,
        'returnlink' =>"/$this->lang/person/all")
        );
    } ;

    return $this->render('message/userform.html.twig', array(
      'lang'=>$this->lang,
      'form' => $form->createView(),
      ));
  }

  public function createVisitorMessageToAdmin(Request $request )
  {
    $lang = $this->requestStack->getCurrentRequest()->getLocale();
    $message = new Message($this->getParameter('admin-name'), $this->getParameter('admin-email'),"", "" ,"", "");
    $form = $this->createForm(VisitorMessageForm::class, $message);
    $form->handleRequest($request);
    if($form->isSubmitted() &&  $form->isValid()  && $this->captchaverify($request->get('g-recaptcha-response')))
    {
      $this->sendMessageToUserCopytoAdministrators($message,0, $lang);
      return $this->render('message/usermessage.html.twig',array(
        'message'=>$message,
        'returnlink' =>"/$this->lang/person/all")
        );
    }
    return $this->render('message/visitorform.html.twig', array(
      'lang'=>$this->lang,
      'form' => $form->createView(),
      ));
  }

  public function showMessages()
  {
    $messages =  $this->getDoctrine()->getRepository("App:Message")->findAdmin();

    return $this->render('message/showall.html.twig', array( 'lang'=>$this->lang,
    'messages' => $messages,
    'returnlink'=> "/admin/message/all",
    ));
  }


  public function showAdminMessage($cid)
  {
    $this->lang = $this->requestStack->getCurrentRequest()->getLocale();


    $message = $this->getDoctrine()->getRepository('App:Message')->find($cid);
    #$user =  $this->getDoctrine()->getRepository('App:User')->findbyEmail($user->getEmail());

    return $this->render('message/show.html.twig', array(
      'lang'=>$this->lang,
      'message' =>$message,
      'returnlink'=> "/admin/message/all",
      ));
  }

  public function showUserMessage($uid,$cid)
  {
    $this->lang = $this->requestStack->getCurrentRequest()->getLocale();


    $message = $this->getDoctrine()->getRepository('App:Message')->find($cid);
    #$user =  $this->getDoctrine()->getRepository('App:User')->findbyEmail($user->getEmail());

    return $this->render('message/show.html.twig', array(
      'lang'=>$this->lang,
      'message' =>$message,
      'returnlink'=> "/admin/user/".$uid,
      ));
  }

  public function deleteMessage($cid)
  {

    $this->getDoctrine()->getRepository('App:Message')->delete($cid);
    return $this->redirect("/admin/message/all");

  }

  public function makeMessageToUser($uid,Request $request )
  {
    $fuser = $this->getDoctrine()->getRepository('App:User')->findOne($uid);

    $subject ="";
    $body="";
    $message = new message($fuser->getUsername(),$fuser->getEmail(),$this->getParameter('admin-name'), $this->getParameter('admin-email'),$subject, $body);

    $form = $this->createForm(MessageForm::class, $message);
    $form->handleRequest($request);

    if($form->isSubmitted() &&  $form->isValid())
    {
      $this->sendMessageToUser($message,$fuser->getUserid(), $fuser->getLang());

      return $this->render('message/admintousermessage_ack.html.twig',array(
        'message'=>$message,
        'returnlink'=>'/admin/user/'.$uid,
        ));
    } ;

    return $this->render('message/sendto.html.twig', array( 'lang'=>$this->lang,
    'form' => $form->createView()
    ));
  }

  public function makeBulkMessage(int $sid)
  {
    $this->lang = $this->requestStack->getCurrentRequest()->getLocale();
    $content =  $this->getDoctrine()->getRepository('App:Content')->findContentlang($sid, $this->lang);
    $request = $this->requestStack->getCurrentRequest();
    $session = $request->getSession();
    $destinataires = $session->get('selectedusers');
    $userlist = explode(",",$destinataires);
    $numbertosend= count($userlist) - 1;
    return $this->render('message/bulkmessage.html.twig', array(
      'lang'=>$this->lang,
      'content'=>$content,
      'destinataires' =>$destinataires,
      'numbertosend'=>$numbertosend,
      'returnlink'=>'/admin/user/search',
      'actionlink'=>'/admin/message/bulk/send/'.$sid,
      ));
  }

  public function sendBulkMessage(int $sid,Request $request )
  {
    $request = $this->requestStack->getCurrentRequest();
    $session = $request->getSession();
    $destinataires = $session->get('selectedusers');
    $userlist = explode(",",$destinataires);
    $sendtoemailstr= "";
    foreach($userlist as $uid)
    {
      $user =  $this->getDoctrine()->getRepository('App:User')->findOne($uid);
      if($user)
      {
        $lang =  $user->getLang();

        $content =  $this->getDoctrine()->getRepository('App:Content')->findContentLang($sid,$lang);
        $subject = $content->gettitle();
        $body= $content->gettext();
        $sendtoemailstr .= $user->getemail().", ";
        $sendtoname = "group.email";
        $message = new message($user->getUserName(),$user->getEmail(),$this->getParameter('admin-name'), $this->getParameter('admin-email'),$subject, $body);
        $datesent =new \DateTime();
        $message->setDate_sent( $datesent);
        $footer =  $this->renderView('message/template/'.$lang.'/contentemailfooter.html.twig',array('userid'=> $uid ,'subjectid'=>$sid ,),'text/html');
        $userbody =    $this->renderView('message/template/'.$lang.'/emailfull.html.twig',array(
          'message'=>$message,'footer'=>$footer,),'text/html');

          $smessage = $this->makeSwiftMessage($message, $userbody);
          $this->mailer->send($smessage);

      }
    }
    $sn = $this->getDoctrine()->getManager();
    $message->setBcc( $sendtoemailstr);
    $sn -> persist($message);
    $sn -> flush();
    // $this->get('mailer')->send($smessage);


    return $this->render('message/bulkusermessage_ack.html.twig',array(
      'message'=>$message,
      'returnlink'=>'/admin/user/search',
      ));

  }





  function makeSwiftMessage($message,$formattedbody)
  {
    $smessage = (new Email());
    $smessage->subject($message->getSubject());
    $sender = $this->getParameter('admin-email');
    $sendername = $this->getParameter('admin-name');
    $smessage->from(new Address($sender,$sendername));
    $smessage->to($message->getToEmail());
    $smessage->html($formattedbody);
    //   $smessage->setContentType("text/html");
    return $smessage;

  }

  function makeSwiftMessageCopyToAdministrators($message,$formattedbody)
  {
    $smessage = (new Email());
    $smessage->subject($message->getSubject());
    $sender = $this->getParameter('admin-email');
    $administrators = explode(",",$this->getParameter('administratorsemails'));
    $sendername = $this->getParameter('admin-name');
    $smessage->from(new Address($sender,$sendername));
    $first = true;
    foreach( $administrators as $administrator)
    {
      //dump("*".$administrator."*");
      if($first)
      {
        $smessage->to($administrator);
      }
      else
      {
        $smessage->addTo($administrator);
      }
    }
    $smessage->html($formattedbody);
    return $smessage;

  }

  function sendMessage($message)
  {
    $datesent =new \DateTime();
    $message->setDate_sent( $datesent);
    $sn = $this->getDoctrine()->getManager();
    $sn -> persist($message);
    $sn -> flush();
    $formattedbody =    $this->renderView('message/emailbody.html.twig',array('message'=>$message,),'text/html');
    $smessage = $this->makeSwiftMessage($message, $formattedbody);
    $this->mailer->send($smessage);
  }

  function sendMessageToUserCopytoAdministrators($message,$userid,$lang)
  {
    $datesent =new \DateTime();
    $message->setDate_sent( $datesent);
    $sn = $this->getDoctrine()->getManager();
    $sn -> persist($message);
    $sn -> flush();;
    if($userid==0)
    {
      $footer =  $this->renderView('message/template/'.$lang.'/visitoremailfooter.html.twig',array(),'text/html');
    }
    else
    {
      $footer =  $this->renderView('message/template/'.$lang.'/useremailfooter.html.twig',array('userid'=> $userid ),'text/html');
    }
    $userbody =    $this->renderView('message/template/'.$lang.'/emailfull.html.twig',array(
      'message'=>$message,'footer'=>$footer,),'text/html');
    $umessage = $this->makeSwiftMessage($message, $userbody);
    $this->mailer->send($umessage);
    $adminfooter =  $this->renderView('message/template/'.$lang.'/adminemailfooter.html.twig',array(),'text/html');
    $adminbody =    $this->renderView('message/template/'.$lang.'/emailfull.html.twig',array(
        'message'=>$message, 'footer'=>$adminfooter,),'text/html');
    $amessage = $this->makeSwiftMessageCopyToAdministrators($message,$adminbody);
    $this->mailer->send($amessage);
  }


  function sendMessageToAdmin($message,$lang)
  {
    $datesent =new \DateTime();
    $message->setDate_sent( $datesent);
    $sn = $this->getDoctrine()->getManager();
    $sn -> persist($message);
    $sn -> flush();
    $adminfooter =  $this->renderView('message/template/'.$lang.'/adminemailfooter.html.twig',array(),'text/html');
    $formattedbody =    $this->renderView('message/template/'.$lang.'/emailfull.html.twig',array(
      'message'=>$message,'footer'=>$adminfooter,),'text/html');

      $smessage = $this->makeSwiftMessage($message, $formattedbody);
      $this->mailer->send($smessage);
  }

  function sendMessageToUser($message,$userid,$lang)
  {
    $datesent =new \DateTime();
    $message->setDate_sent( $datesent);
    $sn = $this->getDoctrine()->getManager();
    $sn -> persist($message);
    $sn -> flush();
    $userfooter =  $this->renderView('message/template/'.$lang.'/useremailfooter.html.twig',
    array('userid'=>$userid,),'text/html');
    $formattedbody =    $this->renderView('message/template/'.$lang.'/emailfull.html.twig',
    array('message'=>$message,'footer'=>$userfooter,),'text/html');
    $smessage = $this->makeSwiftMessage($message, $formattedbody);
    $this->mailer->send($smessage);
  }

  function sendConfidentialMessageToUser($message,$userid,$lang)
  {
    $datesent =new \DateTime();
    $message->setDate_sent( $datesent);
    $message->setPrivate(TRUE);
    $sn = $this->getDoctrine()->getManager();
    $sn -> persist($message);
    $sn -> flush();
    $userfooter =  $this->renderView('message/template/'.$lang.'/useremailfooter.html.twig',array('userid'=>$userid,),'text/html');
    $formattedbody = $this->renderView('message/template/'.$lang.'/emailfull.html.twig',
    array('message'=>$message,'footer'=>$userfooter,),'text/html');
    $smessage = $this->makeSwiftMessage($message, $formattedbody);
    $this->mailer->send($smessage);
  }

  function sendUserMessage($subjecttag,$bodytag,$user)
  {
    $adminlang = $this->requestStack->getCurrentRequest()->getLocale();
    $body =  $this->renderView('message/template/'.$user->getLang().'/'.$bodytag.'.html.twig',array('user'=> $user));
    $subject = $this->trans->trans($subjecttag,[],"messages",$user->getLang());
    $message = new message($user->getUsername(),$user->getEmail(),$this->getParameter('admin-name'), $this->getParameter('admin-email'),$subject, $body);
    if(substr_compare($message->getToEmail(),".free.fr", -strlen(".free.fr")) === 0)
    {
      $message->setSubject ( "REDIRECTED+".$message->getSubject());
      $sentmessage = $this->sendMessageToUser($message,$user->getUserid(), $user->getLang());
    }
    else
    {

      $sentmessage = $this->sendMessageToAdmin($message, $adminlang);
    }
  }

  function sendConfidentialUserMessage($subjecttag,$bodytag,$user)
  {
    $body =  $this->renderView('message/template/'.$user->getLang().'/'.$bodytag.'.html.twig',array('user'=> $user));
    $subject = $this->trans->trans($subjecttag,[],"messages",$user->getLang());
    $message = new message($user->getUsername(),$user->getEmail(),$this->getParameter('admin-name'), $this->getParameter('admin-email'),$subject, $body);
    $sentmessage = $this->get('message_service')->sendConfidentialMessageToUser($message,$user->getUserid(), $user->getLang());
  }

  function sendAdminMessage($subjecttag,$bodytag,$user,$lang)
  {
    $abody =  $this->renderView('message/template/'.$lang.'/'.$bodytag.'.html.twig',array('user'=> $user));
    $subject = $this->trans->trans($subjecttag,[],"messages",$lang);
    $amessage = new message($user->getUsername(),$user->getEmail(),$this->getParameter('admin-name'), $this->getParameter('admin-email'),$subject, $abody);
    $asmessage = $this->get('message_service')->sendMessageToAdmin($amessage, $lang);
  }






  function captchaverify($recaptcha)
  {
    $secret = $this->getParameter('recaptcha_secret');
    $url = "https://www.google.com/recaptcha/api/siteverify";
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, array(
      "secret"=>$secret,"response"=>$recaptcha));
      $response = curl_exec($ch);
      curl_close($ch);
      $data = json_decode($response);

      return $data->success;
      //return true;
  }
}
