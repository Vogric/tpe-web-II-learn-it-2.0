<?php
require_once "./View/AdminView.php";
require_once "./Model/CourseModel.php";
require_once "./Model/SubjectModel.php";

class AdminController
{
    private $view;
    private $course_model;
    private $subject_model;

    public function __construct()
    {
        $this->redirectNotAdmins();
        $this->view = new AdminView();
        $this->course_model = new CourseModel();
        $this->subject_model = new SubjectModel();
    }

    public function redirectNotAdmins()
    {
        if ( session_status() != PHP_SESSION_ACTIVE ) {
            session_start();
        }
        if ( !isset( $_SESSION['IS_LOGGED'] ) ) {
            header( "location: " . BASE_URL . 'login' );
            die();
        }
        // TODO: Verificar si es admin quien esta loggueado
    }

    public function admin()
    {
        $this->view->showAdmin();
    }

    public function prepareAddCourse()
    {
        $courses = $this->course_model->getCourses();
        $subjects = $this->subject_model->getSubjects();
        $this->view->showPrepareAddCourse( $courses, $subjects );
    }

    public function addCourse()
    {
        $new_course = array(
            $_POST["title"],
            ( (int) $_POST["duration"] ),
            ( (int) $_POST["time_commitent"] ),
            ( (int) $_POST["id_subject"] ),
            $_POST["difficulty"],
            $_POST["topics"],
        );
        $this->course_model->addCourse( $new_course );
        // Después de agregar vuelve a la página de agregar
        // TODO Refactor a mejor lugar
        header( "Location: " . BASE_URL . "admin/courses/add" );
    }

    public function editDeleteCourses()
    {

        $courses = $this->course_model->getCourses();
        $this->view->showEditDeleteCourses( $courses );
    }

    public function deleteCourse( $params )
    {
        $course_id = $params[':ID'];
        $this->course_model->deleteCourse( $course_id );
        // TODO Refactor a mejor lugar
        header( "Location: " . BASE_URL . "admin/courses/edit-delete" );
    }

    public function editCourse( $params )
    {
        $course_id = $params[':ID'];
        $course = $this->course_model->getCourseDetail( $course_id );
        $subjects = $this->subject_model->getSubjects();
        $this->view->showEditCourse( $course, $subjects );
    }

    public function updateCourse( $params )
    {
        $course_id = $params[':ID'];

        $course_data = array(
            $_POST["title"],
            ( (int) $_POST["duration"] ),
            ( (int) $_POST["time_commitent"] ),
            ( (int) $_POST["id_subject"] ),
            $_POST["difficulty"],
            $_POST["topics"],
        );
        $this->course_model->updateCourse( $course_id, $course_data );
        // Después de agregar vuelve a la página de agregar
        // TODO Refactor a mejor lugar
        header( "Location: " . BASE_URL . "admin/courses/edit-delete" );
    }

    public function prepareAddSubject()
    {
        $subjects = $this->subject_model->getSubjects();
        $this->view->showPrepareAddSubject( $subjects );
    }

    public function addSubject()
    {
        $new_subject = array(
            $_POST["title"],
        );
        $this->subject_model->addSubject( $new_subject );
        header( "Location: " . BASE_URL . "admin/subjects/add" );
    }

    public function editDeleteSubjects()
    {
        $subjects = $this->subject_model->getSubjects();
        $this->view->showEditDeleteSubjects( $subjects );
    }

    public function deleteSubject( $params )
    {
        $subject_id = $params[':ID'];
        $result = $this->subject_model->deleteSubject( $subject_id );
        if ( $result ) {
            header( "Location: " . BASE_URL . "admin/subjects/edit-delete" );
        } else {
            //"No borra subject";
            header( "Location: " . BASE_URL . "admin/subjects/delete-error" );

        }
    }

    public function deleteError()
    {
        $this->view->showDeleteError();
    }

    public function editSubject( $params )
    {
        $subject_id = $params[':ID'];
        $subject = $this->subject_model->getSubjectById( $subject_id );
        $this->view->showEditSubject( $subject );
    }

    public function updateSubject( $params )
    {
        $subject_id = $params[':ID'];

        $subject_data = array(
            $_POST["title"],
        );
        $this->subject_model->updateSubject( $subject_id, $subject_data );
        header( "Location: " . BASE_URL . "admin/subjects/edit-delete" );
    }
}