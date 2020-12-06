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


    public function deleteComment($params) {
        if(! $_SESSION['IS_ADMIN']) {
            $this->view->response("Required admin to be logged", 403);
        }
        else {
            $id_to_delete = $params[':ID'];
            $result =  $this->model->deleteComment($id_to_delete);

            if($result > 0)
                $this->view->response("Comment with id=$id_to_delete deleted", 200);
            else
                $this->view->response("Comment with id=$id_to_delete not found", 404);
        }
    }

}