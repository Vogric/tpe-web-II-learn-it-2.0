<?php
require_once 'Controller/HomeController.php';
require_once 'Controller/CoursesController.php';
require_once 'Controller/AdminController.php';
require_once 'RouterClass.php';

// CONSTANTES PARA RUTEO
define( "BASE_URL", 'http://' . $_SERVER["SERVER_NAME"] . ':' . $_SERVER["SERVER_PORT"] . dirname( $_SERVER["PHP_SELF"] ) . '/' );

$r = new Router();

// TODO: Personalizar para nuestro TPE
// rutas

// learnit.com/courses/
// http: //localhost/web-2/TPE-WEB-2-%20Repo/courses/
$r->addRoute( "courses", "GET", "CoursesController", "courses" );

// learnit.com/courses/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/courses/2

$r->addRoute( "courses/:ID", "GET", "CoursesController", "courseDetail" );


// learnit.com/admin
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin
$r->addRoute( "admin", "GET", "AdminController", "admin" );

// learnit.com/admin/courses
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/courses
$r->addRoute( "admin/courses", "GET", "AdminController", "courses" );


// TODO learnit.com/admin/subjects/
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/subjects/
// $r->addRoute( "admin/subjects", "GET", "AdminController", "subjects" );

// $r->addRoute("mermelada", "GET", "CoursesController", "Home");

//Esto lo veo en TasksView
// $r->addRoute("insert", "POST", "CoursesController", "InsertTask");

// $r->addRoute("delete/:ID", "GET", "CoursesController", "BorrarLaTaskQueVienePorParametro");
// $r->addRoute("completar/:ID", "GET", "CoursesController", "MarkAsCompletedTask");

//Advance
// $r->addRoute("autocompletar", "GET", "CoursesAdvanceController", "AutoCompletar");

// learnit.com/
//http: //localhost/web-2/TPE-WEB-2-%20Repo/
$r->setDefaultRoute( "HomeController", "home" );

//run
$r->route( $_GET['action'], $_SERVER['REQUEST_METHOD'] );