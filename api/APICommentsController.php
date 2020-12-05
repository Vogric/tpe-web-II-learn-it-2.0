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

    
    public function addComment()
    {
        $body = $this->getData();
        
        echo '<pre>$body =' . "\n";
        var_dump($body);
        echo '</pre>';

        $last_insert_id = $this->model->addComment(
            "mock comment " . date(DATE_RFC2822) . " (to be deleted)",
            4, // score,
            4, // id_course  4 -> "Front-End Frameworks"
            2  // id_user  2-> Fre
        );
        $this->view->response([ "last_insert_id" => $last_insert_id ],200);

    }

}