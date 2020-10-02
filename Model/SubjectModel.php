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
        $sentencia = $this->db->prepare(
            "SELECT * FROM subject" );

        $sentencia->execute();
        return $sentencia->fetchAll( PDO::FETCH_OBJ );
    }

    public function getSubjectDetail( $id_subject )
    {
        $sentencia = $this->db->prepare(
            "SELECT * as subject FROM subject WHERE id=? " );
        $sentencia->execute( array( $id_subject ) );
        return $sentencia->fetch( PDO::FETCH_OBJ );
    }

}