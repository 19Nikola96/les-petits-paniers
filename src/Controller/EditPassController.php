<?php

namespace App\Controller;

use PhpParser\Node\Stmt\Else_;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class EditPassController extends AbstractController
{
    /**
     * @Route("/edit/pass", name="edit_pass")
     * @param Request $request
     * @param UserPasswordEncoderInterface $passwordEncoder
     * @return \Symfony\Component\HttpFoundation\RedirectResponse|\Symfony\Component\HttpFoundation\Response
     */
    public function editPass( UserPasswordEncoderInterface $passwordEncoder, Request $request)
    {

        if($request->isMethod('POST'))
        {
            $em = $this->getDoctrine()->getManager();

            $user = $this->getUser();

            if ($request->request->get('newPass')==$request->request->get('newPass2'))
            {
                $user->setPassword($passwordEncoder->encodePassword($user,$request->request->get('newPass')));
                $em->flush();


            }
            else
            {
                $this->addFlash('Un des deux champs n\est pas valide');
            }
        }




        /*  $match = false;


         $oldPass = $request->request->get('oldPass');


         if($request->request->get('newPass')==$request->request->get('newPass2'))
         {

                 /*


         {
             $user->setPassword($passwordEncoder->encodePassword($user, $request->request->get('password1')));
             $em->flush();

             $this->addFlash('Votre mot de passe à été modifié');

             return $this->redirectToRoute('#');
         }
         else
         {
             $this->addFlash('Un des deux champs n\est pas valide');
         }*/

        return $this->render('edit_pass\index.html.twig');

    }



}
