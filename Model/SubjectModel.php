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

    public function getSubjectById( $id_subject )
    {
        $sentence = $this->db->prepare(
            "SELECT * FROM subject WHERE id=? " );
        $sentence->execute( array( $id_subject ) );

        return $sentence->fetch( PDO::FETCH_OBJ );
    }

    public function getSubjectsWithCourses()
    {
        $sentence = $this->db->prepare(
            "SELECT subject.id as subject_id, subject.title as subject, course.*" .
            "FROM subject LEFT JOIN course " .
            "ON subject.id=course.id_subject ORDER BY subject.title" );

        $sentence->execute();
        return $sentence->fetchAll( PDO::FETCH_OBJ );
    }

    public function addSubject( $new_subject )
    {
        $sentence = $this->db->prepare(
            "INSERT INTO subject(title) " . "VALUES(?)" );
        $sentence->execute( $new_subject );
    }

    public function updateSubject( $subject_id, $subject_data )
    {
        $sentence = $this->db->prepare(
            "UPDATE subject SET" .
            "       title = ?" .
            "WHERE subject.id = ?" );

        $values = $subject_data;
        array_push( $values, $subject_id );

        $sentence->execute( $values );
    }

    public function deleteSubject( $subject_id )
    {
        $sentence = $this->db->prepare( "DELETE FROM subject WHERE id=?" );
        $result = $sentence->execute( array( $subject_id ) );
        return $result;
    }

}