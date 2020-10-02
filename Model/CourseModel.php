<?php

class CourseModel
{
    private $db;

    public function __construct()
    {
        $this->db = new PDO( 'mysql:host=localhost;' . 'dbname=db_courses;charset=utf8', 'root', '' );
    }

    public function getCourses()
    {
        $sentencia = $this->db->prepare(
            "SELECT course.*, subject.title as subject " .
            "FROM course JOIN subject ON course.id_subject = subject.id " );

        $sentencia->execute();
        return $sentencia->fetchAll( PDO::FETCH_OBJ );
    }

    public function getCourseDetail( $id_course )
    {
        $sentencia = $this->db->prepare(
            "SELECT course.*, subject.title as subject " .
            "FROM course JOIN subject ON course.id_subject = subject.id " .
            "WHERE course.id=? " );
        $sentencia->execute( array( $id_course ) );
        return $sentencia->fetch( PDO::FETCH_OBJ );
    }

    public function addCourse($new_course)
    {
        $sentencia = $this->db->prepare( 
            "INSERT INTO course(title, duration, time_commitent," . 
            "                   id_subject, difficulty, topics) " .
            "VALUES(?,?,?,?,?,?)" );
        $sentencia->execute( $new_course );
    }

    // public function DeleteTaskDelModelo( $task_id )
    // {
    //     $sentencia = $this->db->prepare( "DELETE FROM task WHERE id=?" );
    //     $sentencia->execute( array( $task_id ) );
    // }

    // public function MarkAsCompletedTask( $task_id )
    // {
    //     $sentencia = $this->db->prepare( "UPDATE task SET completed=1 WHERE id=?" );
    //     $sentencia->execute( array( $task_id ) );

    // }

}