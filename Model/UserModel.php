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
        // TODO Chequear $result;
        
        return $this->db->lastInsertId(); 
    }

    public function getUsers()
    {
        $sentence = $this->db->prepare(
            "SELECT * FROM user" );

        $sentence->execute( array( ) );
        return $sentence->fetchAll( PDO::FETCH_OBJ );
    }

    public function setUserAsAdmin($user_id,$admin_role)
    {
        $sentence = $this->db->prepare(
            "UPDATE user SET is_admin=? WHERE id=?");

        $result = $sentence->execute( array( ((int) $admin_role),$user_id ) );        
        return $result;
    }

    public function deleteUser( $user_id )
    {
        $sentence = $this->db->prepare(
            "DELETE from user WHERE id=?");

        return $sentence->execute( array( $user_id ) ); 
    }
  
}