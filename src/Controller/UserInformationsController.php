<?php

namespace App\Controller;

use App\Entity\Users;
use App\Form\ChangeUsersInformationsType;
use App\Repository\UsersRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class UserInformationsController extends AbstractController
{
    /**
     * @Route("/user/informations/{id}", defaults={"id": null}, requirements ={"id": "\d+"})
     */
    public function index(Request $request)
    {
        $lastname = $request->request->get('lastname');
        $firstname = $request->request->get('firstname');
        $email = $request->request->get('email');
        /*echo 'lastname :'.$lastname.'<br>';
        echo 'email :'.$email.'<br>';*/

        return $this->render('user_informations/user_info.html.twig', [
            'controller_name' => 'UserInformationsController',
        ]);
    }

    /**
     * @Route("/informations/{id}", defaults={"id": null}, requirements ={"id": "\d+"})
     */
    public function edit(Request $request,
                         EntityManagerInterface $entityManager,
                         UsersRepository $usersRepository,
                         $id)
    {



        /*
        if (is_null($id)) {
            $users = new users();
        } else
        {
            $users = $usersRepository->find($id);
        }

        $form = $this->createForm(ChangeUsersInformationsType::class, $users);

        $form->handleRequest($request);

        if ($form->isSubmitted()) {

            if ($form->isValid()) {

                $entityManager->persist($users);
                $entityManager->flush();

                return $this->redirectToRoute('app_userinformations_edit');
            }
        }
        */
        /*return $this->render(
            'user_informations/user_info.html.twig',
            [
                'formChange' => $form->createView()
            ]
        );*/
    }
}
