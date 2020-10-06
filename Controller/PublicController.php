<?php

require_once "./View/PublicView.php";
require_once "./Model/CourseModel.php";
require_once "./Model/UserModel.php";

class PublicController
{
    private $view;
    private $model;
    private $user_model;

    public function __construct()
    {
        $this->view = new PublicView();
        $this->model = new CourseModel();
        $this->user_model = new USerModel();
    }

    public function home()
    {
        $this->view->showHome();
    }

    // public function Courses()
    // {
    //     $this->view->HelloWorld();

    // }

    public function logout() {
        if(session_status()!= PHP_SESSION_ACTIVE){
            session_start();
        }
        session_destroy();
        header("Location: " . BASE_URL);
        die(); // Recomendado en slide
    }

    public function login()
    {
        if(session_status()!= PHP_SESSION_ACTIVE){
            session_start();
            // echo "<br>Session Sarted<br>";
        }
        // echo '<pre>$_SESSION = ';
        // var_dump($_SESSION);
        // echo "</pre>";        
        if(isset($_SESSION['IS_LOGGED'])){

            // TODO: si es admin ir a admin
            // $_SESSION['IS_ADMIN']
            // sino ir a home

            header("Location: ".BASE_URL);
        }
        else{
            // si no está logueado 
            $this->view->showLogin();
        }
    }

    public function getPassHash()
    {
        echo "<h2>Sign In Check: WIP - Get Pass Hash</h2>";
        echo "<pre>\n";
        var_dump($_POST);        

        $password=$_POST['password'];

        $hash = password_hash($password, PASSWORD_DEFAULT);
        echo "hash = $hash\n";
        echo "</pre>\n";       
        
    }

    public function signInCheck()
    {
        // TODO: Checkear Usuario y contraseña contra la base de datos
        $email=$_POST['email'];
        $password=$_POST['password'];
       
        // Chequear que el usuario exista en la base
        $user = $this->user_model->getUserForEmail($email);

        if( ! empty($user) ){
            // Existe el usuario
            if ( password_verify($password, $user->password)){

                session_start();
                $_SESSION["IS_LOGGED"] = 1; // True
                //$_SESSION["IS_ADMIN"] = $user->is_admin // Futura columna
                $_SESSION["USER_ID"] = $user->id;
                $_SESSION["EMAIL"] = $user->email;
                //$_SESSION['LAST_ACTIVITY'] = time();

                // TODO: Redirigir según admin/ común, chequear ruteo de "home" vs ""
                header("Location: ".BASE_URL);
            }else{
                $this->view->showLogin("Invalid password");
            }
        }else{
            $this->view->ShowLogin("User doesn't exist");
        }
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