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

// learnit.com/admin/course/add
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/course/add
$r->addRoute( "admin/course/add", "GET", "AdminController", "prepareAddCourse" );
$r->addRoute( "admin/course/add", "POST", "AdminController", "addCourse" );

// TODO learnit.com/admin/admin/courses/edit-delete 
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/courses/edit-delete
$r->addRoute("admin/courses/edit-delete", "GET", "AdminController", "editOrDeleteCourses");

// learnit.com/admin/course/delete/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/course/delete/:ID
$r->addRoute("admin/course/delete/:ID", "GET", "AdminController", "TODO");
// learnit.com/admin/course/edit/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/course/edit/:ID
$r->addRoute("admin/course/edit/:ID", "GET", "AdminController", "TODO");



// TODO learnit.com/admin/admin/subject/add 
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/subject/add
$r->addRoute("admin/subject/add", "GET", "AdminController", "prepareAddSubject" );
$r->addRoute("admin/subject/add", "POST", "AdminController", "addSubject" );

// TODO learnit.com/admin/admin/subjects/edit-delete 
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/subjects/edit-delete
$r->addRoute("admin/subjects/edit-delete", "GET", "AdminController", "editOrDeleteSubjects");

// learnit.com/admin/subject/delete/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/subject/delete/:ID
$r->addRoute("admin/subject/delete/:ID", "GET", "AdminController", "TODO");
// learnit.com/admin/subject/edit/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/subject/edit/:ID
$r->addRoute("admin/subject/edit/:ID", "GET", "AdminController", "TODO");






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