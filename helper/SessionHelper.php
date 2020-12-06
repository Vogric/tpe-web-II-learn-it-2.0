<?php

class SessionHelperClass
{
    // TODO Aplicar patrón singleton

    public function __construct()
    {
        $this->checkStartSession();
    }

    public function checkStartSession()
    {
        if ( session_status() != PHP_SESSION_ACTIVE ) {
            $result=session_start();            
            // echo "<pre>Session started = $result";
            // echo "</pre>";
        }
        if ( ! isset($_SESSION['IS_LOGGED']) ) {
            // echo "<pre>Setting session not logged";
            // echo "</pre>";
            $_SESSION['IS_LOGGED']= false;
            $_SESSION['EMAIL']    = null;
            $_SESSION['USER_ID']  = null;
            $_SESSION['USERNAME'] = null;
            $_SESSION['IS_ADMIN'] = null;
        }
    }

    public function loginUser($id,$username,$email,$is_admin=false)
    {
        $_SESSION["IS_LOGGED"] = true;
        $_SESSION["IS_ADMIN"] = $is_admin;
        $_SESSION["USER_ID"] = $id;
        $_SESSION["USERNAME"] = $username;
        $_SESSION["EMAIL"] = $email;

        header( "Location: " . BASE_URL );
        die();
    }

    public function logout()
    {
        if ( session_status() == PHP_SESSION_ACTIVE ) {
            session_destroy();
        }
        header( "Location: " . BASE_URL );
        die(); // Recomendado en slide
    }

}

global $SessionHelper;
$SessionHelper = new SessionHelperClass;

// echo "<pre>SessionHelper created\n\$_SESSION = ";
// var_dump($_SESSION);
// echo "</pre>";
