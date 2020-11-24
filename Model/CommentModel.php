<?php
require_once 'Model/BaseModel.php';

class CommentModel extends BaseModel
{
    public function getComments()
    {
        // TODO consulta a la db
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
        // TODO consulta a la db
        return array(
            array( "id" => 1,
              "comment" => "mock 101",
              "username" => "Fre",
              "score" => 2,
              "id_course" => $course_id
        ),
            array( "id" => 2,
                "comment" => "mock 202",
                "username" => "Braian",
                "score" => 5,
                 "id_course" => $course_id
            )            
        );
    }
}