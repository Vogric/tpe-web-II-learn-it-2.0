<?php

require_once "./View/CoursesView.php";
require_once "./Model/CoursesModel.php";

class CoursesController
{
    private $view;
    private $model;

    public function __construct()
    {
        $this->view = new CoursesView();
        $this->model = new CoursesModel();
    }

    // public function Courses()
    // {
    //     $this->view->HelloWorld();

    // }

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