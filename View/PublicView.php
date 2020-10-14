<?php

require_once "./libs/smarty/Smarty.class.php";

class PublicView
{

    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
        $this->smarty->assign( 'base_url', BASE_URL );

        if ( session_status() != PHP_SESSION_ACTIVE ) {
            session_start();
        }

        if ( isset( $_SESSION['IS_LOGGED'] ) ) {
            $this->smarty->assign( 'logged', true );
            $this->smarty->assign( 'email_s', $_SESSION['EMAIL'] );
        }

    }

    public function showLogin( $error = null )
    {
        $this->smarty->assign( 'title_s', 'LearnIT - Login' );
        $this->smarty->assign( 'error', $error );
        $this->smarty->display( 'templates/login.tpl' );
    }

    public function showCourses( $courses )
    {
        $this->smarty->assign( 'title_s', 'LearnIT - Courses' );
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

    public function showCoursesBySubject( $grouped_courses )
    {
        $this->smarty->assign( 'title_s', 'LearnIT - Subjects' );
        $this->smarty->assign( 'courses_by_subject_s', $grouped_courses );
        $this->smarty->display( 'templates/courses_by_subject.tpl' );
    }

    public function show404NotFound()
    {
        $this->smarty->assign( 'title_s', 'Learnit - Not found' );
        $this->smarty->display( 'templates/404_not_found.tpl' );
    }

}