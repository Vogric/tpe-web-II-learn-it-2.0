<?php

require_once "./libs/smarty/Smarty.class.php";

class CoursesView
{

    private $title;

    public function __construct()
    {
        $this->title = "Lista de Cursos";
    }

    public function ShowCourses( $courses )
    {
        $smarty = new Smarty();
        $smarty->assign( 'title_s', $this->title );
        $smarty->assign( 'courses_s', $courses );

        $smarty->display( 'templates/courses.tpl' );
    }

    public function ShowCourseDetail( $course )
    {
        $smarty = new Smarty();
        $smarty->assign( 'title_s', $course->title );
        $smarty->assign( 'course_s', $course );

        $smarty->display( 'templates/courseDetail.tpl' );
    }

    // public function ShowEditTask( $task )
    // {
    //     //TODO hacer con Smarty

    // }

    // public function ShowHomeLocation()
    // {
    //     header( "Location: " . BASE_URL . "home" );
    // }

}