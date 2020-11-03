<?php
require_once 'RouterClass.php';
require_once 'api/APICommentsController.php';

// instacio el router
$router = new Router();

// armo la tabla de ruteo de la API REST

// learnit.local/api/comments
// http://localhost/web-2/TPE-WEB-2-%20Repo/api/comments
$router->addRoute('comments', 'GET', 'APICommentsController', 'getComments');
/*
$router->addRoute('tareas', 'GET', 'ApiTasksController', 'GetTasks');
$router->addRoute('tareas/:ID', 'GET', 'ApiTasksController', 'GetTask');
$router->addRoute('tareas/:ID', 'DELETE', 'ApiTasksController', 'DeleteTask');

$router->addRoute('tareas', 'POST', 'ApiTasksController', 'InsertTask');


$router->addRoute('tareas/:ID', 'PUT', 'ApiTasksController', 'UpdateTask');
*/

 //run
 $router->route($_GET['resource'], $_SERVER['REQUEST_METHOD']); 