<?php
require_once 'Model/BaseModel.php';

class CommentModel extends BaseModel
{
    public function getComments()
    {
        // TODO consulta a la db
        // listado con todos los comentarios y más info
        return array(
            array( "id" => 1,
              "comment" => "mock 101",
              "username" => "Fre",
              "score" => 2,
              "id_course" => 1
        ),
            array( "id" => 2,
                "comment" => "mock 202",
                "username" => "Braian",
                "score" => 5,
                 "id_course" => 1
            )            
        );
    }

    public function getCommentsForCourse($course_id)
    {
        $sentence = $this->db->prepare(
            "SELECT comment.*,user.username 
             FROM comment JOIN user ON comment.id_user = user.id 
             WHERE comment.id_course = ?" );

        $sentence->execute( array( $course_id ) );

        return $sentence->fetchAll( PDO::FETCH_OBJ );
    }

    public function addComment($text,$score,$id_course,$id_user)
    {
        $sentence = $this->db->prepare(
            "INSERT INTO comment (text,score,id_course,id_user) 
             VALUES (?,?,?,?)" );

        $sentence->execute( array($text,$score,$id_course,$id_user) );
        // TODO: chequear que el execute no diera error

        return $this->db->lastInsertId();
    }


    
}