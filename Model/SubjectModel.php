<?php

class SubjectModel
{
    private $db;

    public function __construct()
    {
        $this->db = new PDO( 'mysql:host=localhost;' . 'dbname=db_courses;charset=utf8', 'root', '' );
    }

    public function getSubjects()
    {
        $sentence = $this->db->prepare(
            "SELECT * FROM subject" );

        $sentence->execute();
        return $sentence->fetchAll( PDO::FETCH_OBJ );
    }

    public function getSubjectDetail( $id_subject )
    {
        $sentence = $this->db->prepare(
            "SELECT * as subject FROM subject WHERE id=? " );
        $sentence->execute( array( $id_subject ) );
        return $sentence->fetch( PDO::FETCH_OBJ );
    }

}