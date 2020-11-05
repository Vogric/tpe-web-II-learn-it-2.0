<?php
require_once 'Model/BaseModel.php';

class UserModel extends BaseModel
{
    private $db;
    public function __construct()
    {
        $this->db = $this->createConection();
    }

    public function getUserForEmail( $email )
    {
        $sentence = $this->db->prepare(
            "SELECT * FROM user WHERE email=? " );

        $sentence->execute( array( $email ) );
        return $sentence->fetch( PDO::FETCH_OBJ );
    }
}