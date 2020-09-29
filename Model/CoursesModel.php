<?php

class CoursesModel
{
    private $db;

    public function __construct()
    {
        $this->db = new PDO( 'mysql:host=localhost;' . 'dbname=db_courses;charset=utf8', 'root', '' );
    }

    public function GetCourses()
    {
        $sentencia = $this->db->prepare(
            "SELECT * FROM course" );

        $sentencia->execute();
        return $sentencia->fetchAll( PDO::FETCH_OBJ );
    }

    //
    public function GetCourseDetail( $id_course )
    {
        $sentencia = $this->db->prepare(
            "SELECT * FROM course WHERE id=?" );
        $sentencia->execute( array( $id_course ) );
        return $sentencia->fetch( PDO::FETCH_OBJ );
    }

    // public function InsertTask( $title, $description, $completed, $priority )
    // {
    //     $sentencia = $this->db->prepare( "INSERT INTO task(title, description, completed, priority) VALUES(?,?,?,?)" );
    //     $sentencia->execute( array( $title, $description, $completed, $priority ) );
    // }

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