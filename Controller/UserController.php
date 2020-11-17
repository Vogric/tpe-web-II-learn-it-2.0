<?php
require_once "./View/UserView.php";

class UserController
{
    private $view;

    public function __construct()
    {
        $this->redirectNotUsers();
        $this->view = new UserView();
    }

    public function redirectNotUsers()
    {
        if ( session_status() != PHP_SESSION_ACTIVE ) {
            session_start();
        }
        if ( !isset( $_SESSION['IS_LOGGED'] ) ) {
            header( "location: " . BASE_URL . 'login' );
            die();
        }
    }

    public function user()
    {
        $this->view->showUser();
    }

    public function prepareAddUser()
    {
        $users = $this->user_model->getUsers();
        $this->view->showPrepareAddUser( $users );
    }
}