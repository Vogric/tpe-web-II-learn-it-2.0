<?php
require_once "./View/AdminView.php";
require_once "./Model/CoursesModel.php";

class AdminController
{
    private $view;
    private $model;

    public function __construct()
    {
        $this->view = new AdminView();
        $this->model = new CoursesModel();
    }

    public function admin()
    {
        $this->view->showAdmin();
    }

    public function prepareAddCourse()
    {
        $courses = $this->model->getCourses();
        $this->view->showPrepareAddCourse( $courses );
    }

    // public function courseDetail( $params = null )
    // {
    //     $course_id = $params[':ID'];
    //     $course = $this->model->getCourseDetail( $course_id );
    //     $this->view->showCourseDetail( $course );
    // }

    // public function InsertCourses()
    // {

    //     $completed = 0;
    //     if ( isset( $_POST['input_completed'] ) ) {
    //         $completed = 1;
    //     }

    //     $this->model->InsertCourses( $_POST['input_title'], $_POST['input_description'], $completed, $_POST['input_priority'] );
    //     $this->view->ShowHomeLocation();
    // }

    // public function EditCourse( $params = null )
    // {
    //     $course_id = $params[':ID'];
    //     $course = $this->model->GetCourse( $course_id );

    //     $this->view->ShowEditCourse( $course );
    // }

    // public function BorrarLaTaskQueVienePorParametro( $params = null )
    // {
    //     $course_id = $params[':ID'];
    //     $this->model->DeleteTaskDelModelo( $course_id );
    //     $this->view->ShowHomeLocation();
    // }

    // public function MarkAsCompletedTask( $params = null )
    // {
    //     $course_id = $params[':ID'];
    //     $this->model->MarkAsCompletedTask( $course_id );
    //     $this->view->ShowHomeLocation();
    // }
}