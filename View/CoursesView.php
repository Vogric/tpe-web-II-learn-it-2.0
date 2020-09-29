<?php

// require_once "./libs/smarty/Smarty.class.php";

class CoursesView
{

    private $title;

    public function __construct()
    {
        $this->title = "Lista de Cursos";
    }

    public function ShowCourses( $courses )
    {

        echo "<pre>";
        echo "Cursos";
        print_r( $courses );
        echo "</pre>";

    }

    // public function ShowCourse( $courses )
    // {

    //     $smarty = new Smarty();
    //     $smarty->assign( 'titulo_s', $this->title );
    //     $smarty->assign( 'tareas_s', $tasks );

    //     $smarty->display( 'templates/tasks.tpl' ); // muestro el template
    // }

    // public function ShowEditTask( $task )
    // {
    //     //TODO hacer con Smarty

    // }

    // public function ShowHomeLocation()
    // {
    //     header( "Location: " . BASE_URL . "home" );
    // }

}