<?php
require_once 'Controller/PublicController.php';
require_once 'Controller/AdminController.php';
require_once 'Controller/RedirectController.php';
require_once 'RouterClass.php';

// CONSTANTES PARA RUTEO
define( "BASE_URL", 'http://' . $_SERVER["SERVER_NAME"] . ':' . $_SERVER["SERVER_PORT"] . 
                    dirname( $_SERVER["PHP_SELF"] ) . '/' );

$r = new Router();

// TODO: Personalizar para nuestro TPE
// rutas

// learnit.com/courses/
// http: //localhost/web-2/TPE-WEB-2-%20Repo/courses/
$r->addRoute( "courses", "GET", "PublicController", "courses" );

// learnit.com/courses/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/courses/2

$r->addRoute( "courses/:ID", "GET", "PublicController", "courseDetail" );



// learnit.com/admin
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin
$r->addRoute( "admin", "GET", "AdminController", "admin" );

// learnit.com/admin/course/add
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/course/add
$r->addRoute( "admin/course/add", "GET", "AdminController", "prepareAddCourse" );
$r->addRoute( "admin/course/add", "POST", "AdminController", "addCourse" );

$r->addRoute( "admin/course/","GET","RedirectController","goAdmin");
$r->addRoute( "admin/courses/","GET","RedirectController","goAdmin");
$r->addRoute( "admin/subject/","GET","RedirectController","goAdmin");
$r->addRoute( "admin/subjects/","GET","RedirectController","goAdmin");

// TODO learnit.com/admin/admin/courses/edit-delete 
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/courses/edit-delete
$r->addRoute("admin/courses/edit-delete", "GET", "AdminController", "editDeleteCourses");

// learnit.com/admin/course/delete/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/course/delete/:ID
$r->addRoute("admin/course/delete/:ID", "GET", "AdminController", "deleteCourse");
// learnit.com/admin/course/edit/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/course/edit/:ID
$r->addRoute("admin/course/edit/:ID", "GET", "AdminController", "editCourse");
$r->addRoute("admin/course/edit/:ID", "POST", "AdminController", "updateCourse");



// TODO learnit.com/admin/admin/subject/add 
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/subject/add
$r->addRoute("admin/subject/add", "GET", "AdminController", "prepareAddSubject" );
$r->addRoute("admin/subject/add", "POST", "AdminController", "addSubject" );

// TODO learnit.com/admin/admin/subjects/edit-delete 
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/subjects/edit-delete
$r->addRoute("admin/subjects/edit-delete", "GET", "AdminController", "editDeleteSubjects");

// learnit.com/admin/subject/delete/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/subject/delete/:ID
$r->addRoute("admin/subject/delete/:ID", "GET", "AdminController", "TODO");
// learnit.com/admin/subject/edit/:ID
// http: //localhost/web-2/TPE-WEB-2-%20Repo/admin/subject/edit/:ID
$r->addRoute("admin/subject/edit/:ID", "GET", "AdminController", "TODO");


// learnit.com/
//http: //localhost/web-2/TPE-WEB-2-%20Repo/
// $r->addRoute("", "GET","RedirectController", "blank" );


$r->addRoute("login", "GET","PublicController", "login" );
$r->addRoute("logout", "GET","PublicController", "logout" );

// Comentar ésta y descomentar la siguiente para generar hash manualmente
$r->addRoute("sign-in-check", "POST","PublicController", "signInCheck" );
// $r->addRoute("sign-in-check", "POST","PublicController", "getPassHash" );


// IMPORTANTE:
// Ésta debe estar a lo último para evitar pisar a las anteriores
$r->addRoute("", "GET","PublicController", "home" );


// TODO Usar para 404
// $r->setDefaultRoute( "HomeController", "home" );

// Debug a mano de ruteo
//echo "<pre>r->route( \"" . $_GET['action'] . "\", \"" .
//     $_SERVER['REQUEST_METHOD'] . "\" )</pre>";
//run
$r->route( $_GET['action'], $_SERVER['REQUEST_METHOD'] );