<?php
require_once './Model/CommentModel.php';
require_once './api/APIController.php';

class APICommentsController extends APIController
{
    public function __construct()
    {
        parent::__construct();
        $this->model = new CommentModel();
    }

    public function getComments()
    {
        $comments = $this->model->getComments();
        $this->view->response($comments,200);
    }

    
    public function getCommentsForCourse($params)
    {
        $course_id = $params[':COURSE_ID'];
        $comments = $this->model->getCommentsForCourse($course_id);
        $this->view->response($comments,200);
    }
}