<?php
require_once 'Model/BaseModel.php';

class UserModel extends BaseModel
{
    public function getUserForEmail( $email )
    {
        $sentence = $this->db->prepare(
            "SELECT * FROM user WHERE email=? " );

        $sentence->execute( array( $email ) );
        return $sentence->fetch( PDO::FETCH_OBJ );
    }

    public function addUser( $email, $username, $password )    
    {
        // is_admin: Los usuarios creados, siempre serán usuarios normales. ie: no admin
         $sentence = $this->db->prepare(
            "INSERT INTO `user` (`username`, `email`, `password`) 
                    VALUES (?,?,?)" );

        $result=$sentence->execute( array( $username, $email, $password ) );
        return $result;
    }
}