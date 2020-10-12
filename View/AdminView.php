<?php

require_once "./libs/smarty/Smarty.class.php";

class AdminView
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

    public function showAdmin()
    {
        $this->smarty->assign( 'title_s', 'LearnIT - Admin' );
        $this->smarty->display( 'templates/admin.tpl' );
    }

    public function showPrepareAddCourse( $courses, $subjects )
    {
        // Mostrar un formulario para agregar un curso nuevo
        // y Mostrar todos los cursos ya existentes.
        $this->smarty->assign( 'title_s', 'Admin: Add a course' );
        $this->smarty->assign( 'courses_s', $courses );
        $this->smarty->assign( 'subjects_s', $subjects );
        $this->smarty->display( 'templates/prepare_add_course.tpl' );
    }

    public function showEditDeleteCourses( $courses )
    {
        $this->smarty->assign( 'title_s', 'Admin: Edit / Delete courses' );
        $this->smarty->assign( 'courses_s', $courses );
        $this->smarty->display( 'templates/edit_delete_courses.tpl' );
    }

    public function showEditCourse( $course, $subjects )
    {
        $this->smarty->assign( 'title_s', 'Admin: Edit a course' );
        $this->smarty->assign( 'course_s', $course );
        $this->smarty->assign( 'subjects_s', $subjects );
        $this->smarty->display( 'templates/edit_course.tpl' );
    }

    public function showPrepareAddSubject( $subjects )
    {
        $this->smarty->assign( 'title_s', 'Admin: Add a Subject' );
        $this->smarty->assign( 'subjects_s', $subjects );
        $this->smarty->display( 'templates/prepare_add_subject.tpl' );
    }

    public function showEditDeleteSubjects( $subjects )
    {
        $this->smarty->assign( 'title_s', 'Admin: Edit / Delete subjects' );
        $this->smarty->assign( 'subjects_s', $subjects );
        $this->smarty->display( 'templates/edit_delete_subjects.tpl' );
    }

    public function showEditSubject( $subject )
    {
        $this->smarty->assign( 'title_s', 'Admin: Edit a subject' );
        $this->smarty->assign( 'subject_s', $subject );
        $this->smarty->display( 'templates/edit_subject.tpl' );
    }

    public function showDeleteError()
    {
        $this->smarty->assign( 'title_s', 'Admin: Edit a subject' );
        $this->smarty->assign( 'error_s', "You can't delete a subject if it does have courses assigned" );
        $this->smarty->assign( 'back_s', "admin/subjects/edit-delete" );
        $this->smarty->display( 'templates/error.tpl' );

    }
}