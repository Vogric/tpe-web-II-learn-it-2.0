<?php

require_once "./View/HomeView.php";
// require_once "./Model/CoursesModel.php";

class HomeController
{
    private $view;
    // private $model;

    public function __construct()
    {
        $this->view = new HomeView();
        // $this->model = new CoursesModel();
    }

    public function home()
    {
        $this->view->showHome();
    }

}