<?php

require_once "./View/PublicView.php";
require_once "./Model/CourseModel.php";

class PublicController
{
    private $view;
    private $model;

    public function __construct()
    {
        $this->view = new PublicView();
        $this->model = new CourseModel();
    }

    public function home()
    {
        $this->view->showHome();
    }

    // public function Courses()
    // {
    //     $this->view->HelloWorld();

    // }

    public function login()
    {
        // TODO: Acá debería chequear si ya está logueado
        // si lo esta, chequear si es admin
        //     si es admin ir a admin
        //     sino ir a home
        // si no está logueado sigue la funcion
        $this->view->showlogin();
    }

    public function signInCheck()
    {
        // TODO: Checkear Usuario y contraseña contra la base de datos
        echo "<h2>Sign In Check: WIP</h2>";
        echo "<pre>\n";
        var_dump($_POST);
        $password=$_POST['password'];

        $hash = password_hash($password, PASSWORD_DEFAULT);
        echo "hash = $hash\n";
        echo "</pre>\n";        
    }


    public function courses()
    {
        $courses = $this->model->getCourses();
        $this->view->showCourses( $courses );
    }

    public function courseDetail( $params = null )
    {
        $course_id = $params[':ID'];
        $course = $this->model->getCourseDetail( $course_id );
        $this->view->showCourseDetail( $course );
    }

}