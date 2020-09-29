<?php
require_once 'Controller/CoursesController.php';
require_once 'RouterClass.php';

// CONSTANTES PARA RUTEO
define( "BASE_URL", 'http://' . $_SERVER["SERVER_NAME"] . ':' . $_SERVER["SERVER_PORT"] . dirname( $_SERVER["PHP_SELF"] ) . '/' );

$r = new Router();

// TODO: Personalizar para nuestro TPE
// rutas
// learnit.com/courses/
//http: //localhost/web-2/TPE-WEB-2-%20Repo/courses

$r->addRoute( "courses", "GET", "CoursesController", "Courses" );
// $r->addRoute("mermelada", "GET", "CoursesController", "Home");

//Esto lo veo en TasksView
// $r->addRoute("insert", "POST", "CoursesController", "InsertTask");

// $r->addRoute("delete/:ID", "GET", "CoursesController", "BorrarLaTaskQueVienePorParametro");
// $r->addRoute("completar/:ID", "GET", "CoursesController", "MarkAsCompletedTask");

//Ruta por defecto.
// $r->setDefaultRoute("CoursesController", "Home");

//Advance
// $r->addRoute("autocompletar", "GET", "CoursesAdvanceController", "AutoCompletar");

//run
$r->route( $_GET['action'], $_SERVER['REQUEST_METHOD'] );