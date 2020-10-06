<?php

class UserModel
{
    private $db;

    public function __construct()
    {
        $this->db = new PDO( 'mysql:host=localhost;' . 'dbname=db_courses;charset=utf8', 'root', '' );
    }

    public function getUserForEmail($email)
    {
        $sentence = $this->db->prepare(
            "SELECT * FROM user WHERE email=? " );

        $sentence->execute(array($email));
        return $sentence->fetch( PDO::FETCH_OBJ );
    }
}