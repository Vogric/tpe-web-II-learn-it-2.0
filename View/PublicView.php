<?php

require_once "./libs/smarty/Smarty.class.php";

class PublicView
{

    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
        $this->smarty->assign( 'base_url', BASE_URL );
        
        if(session_status()!= PHP_SESSION_ACTIVE){
            session_start();
        }

        if( isset($_SESSION['IS_LOGGED']) ) {
            $this->smarty->assign( 'logged', 1);
            $this->smarty->assign( 'email_s', $_SESSION['EMAIL']);
        } 

    }

    public function showHome()
    {
        $this->smarty->assign( 'title_s', 'LearnIT' );
        $this->smarty->display( 'templates/home.tpl' );
    }

    public function showLogin( $error = null )
    {
        $this->smarty->assign( 'title_s', 'LearnIT - Login' );
        $this->smarty->assign( 'error', $error );
        $this->smarty->display( 'templates/login.tpl' );
    }

    public function showCourses( $courses )
    {
        $this->smarty->assign( 'title_s', 'Courses List' );
        $this->smarty->assign( 'courses_s', $courses );
        $this->smarty->display( 'templates/courses.tpl' );
    }

    public function showCourseDetail( $course )
    {
        $this->smarty->assign( 'title_s', $course->title );
        $this->smarty->assign( 'course_s', $course );
        $this->smarty->display( 'templates/course_detail.tpl' );
    }

    public function showSubjects( $subjects )
    {
        $this->smarty->assign( 'title_s', 'Subjects List' );
        $this->smarty->assign( 'subjects_s', $subjects );
        $this->smarty->display( 'templates/subjects.tpl' );
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