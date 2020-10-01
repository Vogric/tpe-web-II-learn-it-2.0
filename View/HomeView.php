<?php
require_once "./libs/smarty/Smarty.class.php";

class HomeView
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
        $this->smarty->assign( 'base_url', BASE_URL );
    }

    public function showHome()
    {
        $this->smarty->assign( 'title_s', 'LearnIT' );
        $this->smarty->display( 'templates/home.tpl' );
    }
}