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

    public function Home()
    {
        $tasks = $this->model->GetTasks();
        $this->view->ShowHome( $tasks );
    }

    public function InsertTask()
    {

        $completed = 0;
        if ( isset( $_POST['input_completed'] ) ) {
            $completed = 1;
        }

        $this->model->InsertTask( $_POST['input_title'], $_POST['input_description'], $completed, $_POST['input_priority'] );
        $this->view->ShowHomeLocation();
    }

    public function EditTask( $params = null )
    {
        $task_id = $params[':ID'];
        $task = $this->model->GetTask( $task_id );

        $this->view->ShowEditTask( $task );
    }

    public function BorrarLaTaskQueVienePorParametro( $params = null )
    {
        $task_id = $params[':ID'];
        $this->model->DeleteTaskDelModelo( $task_id );
        $this->view->ShowHomeLocation();
    }

    public function MarkAsCompletedTask( $params = null )
    {
        $task_id = $params[':ID'];
        $this->model->MarkAsCompletedTask( $task_id );
        $this->view->ShowHomeLocation();
    }
}