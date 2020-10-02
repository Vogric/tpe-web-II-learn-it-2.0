<?php

require_once "./libs/smarty/Smarty.class.php";

class AdminView
{

    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
        $this->smarty->assign( 'base_url', BASE_URL );
    }

    public function showAdmin()
    {
        $this->smarty->assign( 'title_s', 'LearnIT - Admin' );
        $this->smarty->display( 'templates/admin.tpl' );
    }

    public function showPrepareAddCourse( $courses )
    {
        // Mostrar un formulario para agregar un curso nuevo
        // y Mostrar todos los cursos ya existentes.
        $this->smarty->assign( 'title_s', 'Admin: Add a course' );
        $this->smarty->assign( 'courses_s', $courses );
        $this->smarty->display( 'templates/prepare_add_course.tpl' );
    }

    // public function showCourseDetail( $course )
    // {
    //     $this->smarty->assign( 'title_s', $course->title );
    //     $this->smarty->assign( 'course_s', $course );
    //     $this->smarty->display( 'templates/course_detail.tpl' );
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