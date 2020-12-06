<?php
require_once 'helper/SessionHelper.php';
require_once 'libs/RouterClass.php';
require_once 'api/APICommentsController.php';
require_once 'api/APISessionController.php';

// instacio el router
$router = new Router();

// armo la tabla de ruteo de la API REST

// learnit.local/api/comments
// http://localhost/web-2/TPE-WEB-2-%20Repo/api/course/1/comments
$router->addRoute('course/:COURSE_ID/comments', 'GET', 'APICommentsController', 'getCommentsForCourse');

// La dejamos para inspección general de todos los comentarios del sitio
$router->addRoute('comments', 'GET', 'APICommentsController', 'getComments');

$router->addRoute('comments', 'POST', 'APICommentsController', 'addComment');

$router->addRoute('comments/:ID', 'DELETE', 'APICommentsController', 'deleteComment');

//Info de session via API
$router->addRoute('session', 'GET', 'APISessionController', 'sessionInfo');

 //run
 $router->route($_GET['resource'], $_SERVER['REQUEST_METHOD']); 