<?php
require_once './helper/SessionHelper.php';
require_once './api/APIController.php';

class APISessionController extends APIController
{
    public function sessionInfo(){

        $info=[
            'is_logged' => $_SESSION['IS_LOGGED'],
            'user_id'  => $_SESSION['USER_ID'],
            'username' => $_SESSION['USERNAME'],
            'is_admin' => $_SESSION['IS_ADMIN']
        ];

        $this->view->response($info,200);
    }

}
