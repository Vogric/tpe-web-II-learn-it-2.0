<?php
require_once "./View/BaseView.php";
require_once "./libs/smarty/Smarty.class.php";

class UserView extends BaseView
{
    public function showUser()
    {
        $this->smarty->assign( 'title_s', 'LearnIT - User' );
        $this->smarty->display( 'templates/user.tpl' );
    }

}