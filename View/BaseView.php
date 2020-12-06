<?php
require_once './helper/SessionHelper.php';

class BaseView
{
    protected $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
        $this->smarty->assign( 'base_url_s', BASE_URL );

        $this->smarty->assign( 'logged_s', $_SESSION['IS_LOGGED'] );
        $this->smarty->assign( 'email_s', $_SESSION['EMAIL'] );
        $this->smarty->assign( 'user_id_s', $_SESSION['USER_ID'] );
        $this->smarty->assign( 'username_s', $_SESSION['USERNAME'] );
        $this->smarty->assign( 'is_admin_s', $_SESSION['IS_ADMIN'] );                
    }

    public function showError( $message )
    {
        // TODO
        echo '<br>TODO Showing Error<br>';
    }
}