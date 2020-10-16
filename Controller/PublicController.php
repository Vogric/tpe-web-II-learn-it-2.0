<?php

require_once "./View/PublicView.php";
require_once "./Model/CourseModel.php";
require_once "./Model/UserModel.php";
require_once "./Model/SubjectModel.php";

class PublicController
{
    private $view;
    private $model;
    private $user_model;

    public function __construct()
    {
        $this->view = new PublicView();
        $this->model = new CourseModel();
        $this->subject_model = new SubjectModel();
        $this->user_model = new USerModel();
    }

    public function logout()
    {
        if ( session_status() != PHP_SESSION_ACTIVE ) {
            session_start();
        }
        session_destroy();
        header( "Location: " . BASE_URL );
        die(); // Recomendado en slide
    }

    public function login()
    {
        if ( session_status() != PHP_SESSION_ACTIVE ) {
            session_start();
        }
        if ( isset( $_SESSION['IS_LOGGED'] ) ) {

            // TODO: si es admin ir a admin
            // $_SESSION['IS_ADMIN']
            // sino ir a home

            header( "Location: " . BASE_URL );
        } else {
            // si no está logueado
            $this->view->showLogin();
        }
    }

    public function getPassHash()
    {
        echo "<h2>Sign In Check: WIP - Get Pass Hash</h2>";
        echo "<pre>\n";
        var_dump( $_POST );

        $password = $_POST['password'];

        $hash = password_hash( $password, PASSWORD_DEFAULT );
        echo "hash = $hash\n";
        echo "</pre>\n";

    }

    public function signInCheck()
    {
        $email = $_POST['email'];
        $password = $_POST['password'];

        // Chequear que el usuario exista en la base
        $user = $this->user_model->getUserForEmail( $email );

        if ( !empty( $user ) ) {
            // Existe el usuario
            if ( password_verify( $password, $user->password ) ) {

                session_start();
                $_SESSION["IS_LOGGED"] = true;
                //$_SESSION["IS_ADMIN"] = $user->is_admin // Futura columna
                $_SESSION["USER_ID"] = $user->id;
                $_SESSION["EMAIL"] = $user->email;
                //$_SESSION['LAST_ACTIVITY'] = time();

                // TODO: Redirigir según admin/ común
                header( "Location: " . BASE_URL );
            } else {
                $this->view->showLogin( "Invalid password" );
            }
        } else {
            $this->view->ShowLogin( "User doesn't exist" );
        }
    }

    //Se sacaria este metodo
    public function subjects()
    {
        $subjects = $this->subject_model->getSubjects();
        $this->view->showSubjects( $subjects );
    }

    public function courses()
    {
        $courses = $this->model->getCourses();
        $this->view->showCourses( $courses );
    }

    public function coursesBySubject()
    {
        $courses = $this->subject_model->getSubjectsWithCourses();

        # Armo una estructura de dos niveles
        # para facilitar el template
        # ref https://stackoverflow.com/a/12706454
        $grouped_courses = array();
        foreach ( $courses as $row ) {
            // Todos los groups tendrán al menos una fila
            // Si no había cursos, los atributos de `course` estarán en NULL
            $grouped_courses[$row->subject][] = $row;
        }
        $this->view->showCoursesBySubject( $grouped_courses );

    }

    public function courseDetail( $params = null )
    {
        $course_id = $params[':ID'];
        $course = $this->model->getCourseDetail( $course_id );
        $this->view->showCourseDetail( $course );
    }

    public function notFound()
    {
        $this->view->show404NotFound();
    }

}