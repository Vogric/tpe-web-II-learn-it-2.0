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
        
        // TODO: Validar. Espero en $body:
        //     text
        //     score
        //     id_course
        //     id_user                

        $last_insert_id = $this->model->addComment(
            $body->text,$body->score,$body->id_course,$body->id_user);
        
        // TODO: Dar error si hubo error
        $this->view->response([ "last_insert_id" => $last_insert_id ],200);
    }

}