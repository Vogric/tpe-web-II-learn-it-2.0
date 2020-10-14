<?php
require_once 'Controller/PublicController.php';
require_once 'Controller/AdminController.php';
require_once 'RouterClass.php';

// CONSTANTES PARA RUTEO
define( "BASE_URL", 'http://' . $_SERVER["SERVER_NAME"] . ':' . $_SERVER["SERVER_PORT"] .
    ( dirname( $_SERVER["PHP_SELF"] ) == '/' ?
        '/' :
        dirname( $_SERVER["PHP_SELF"] ) . '/' )
);
// Control en dirname para evitar doble "/" en BASE_URL.
// ie: "misitio.com//"

$r = new Router();

// rutas

// learnit.com/
// http://localhost/web-2/TPE-WEB-2-%20Repo/
// Nuestra "home"
$r->addRoute( "", "GET", "PublicController", "courses" );

// learnit.com/courses/:ID
// http://localhost/web-2/TPE-WEB-2-%20Repo/courses/2
$r->addRoute( "courses/:ID", "GET", "PublicController", "courseDetail" );

// learnit.com/subjects/
// http://localhost/web-2/TPE-WEB-2-%20Repo/subjects/
$r->addRoute( "subjects", "GET", "PublicController", "coursesBySubject" );

$r->addRoute( "login", "GET", "PublicController", "login" );
$r->addRoute( "logout", "GET", "PublicController", "logout" );

// Comentar ésta y descomentar la siguiente para generar hash manualmente
$r->addRoute( "sign-in-check", "POST", "PublicController", "signInCheck" );
// $r->addRoute( "sign-in-check", "POST", "PublicController", "getPassHash" );

// learnit.com/admin
// http://localhost/web-2/TPE-WEB-2-%20Repo/admin
$r->addRoute( "admin", "GET", "AdminController", "admin" );

// learnit.com/admin/courses/add
// http://localhost/web-2/TPE-WEB-2-%20Repo/admin/courses/add
$r->addRoute( "admin/courses/add", "GET", "AdminController", "prepareAddCourse" );
$r->addRoute( "admin/courses/add", "POST", "AdminController", "addCourse" );

// TODO learnit.com/admin/admin/courses/edit-delete
// http://localhost/web-2/TPE-WEB-2-%20Repo/admin/courses/edit-delete
$r->addRoute( "admin/courses/edit-delete", "GET", "AdminController", "editDeleteCourses" );

// learnit.com/admin/courses/delete/:ID
// http://localhost/web-2/TPE-WEB-2-%20Repo/admin/courses/delete/:ID
$r->addRoute( "admin/courses/delete/:ID", "GET", "AdminController", "deleteCourse" );

// learnit.com/admin/courses/edit/:ID
// http://localhost/web-2/TPE-WEB-2-%20Repo/admin/courses/edit/:ID
$r->addRoute( "admin/courses/edit/:ID", "GET", "AdminController", "editCourse" );
$r->addRoute( "admin/courses/edit/:ID", "POST", "AdminController", "updateCourse" );

// TODO learnit.com/admin/admin/subjects/add
// http://localhost/web-2/TPE-WEB-2-%20Repo/admin/subjects/add
$r->addRoute( "admin/subjects/add", "GET", "AdminController", "prepareAddSubject" );
$r->addRoute( "admin/subjects/add", "POST", "AdminController", "addSubject" );

// TODO learnit.com/admin/admin/subjects/edit-delete
// http://localhost/web-2/TPE-WEB-2-%20Repo/admin/subjects/edit-delete
$r->addRoute( "admin/subjects/edit-delete", "GET", "AdminController", "editDeleteSubjects" );

// learnit.com/admin/subjects/delete/:ID
// http://localhost/web-2/TPE-WEB-2-%20Repo/admin/subjects/delete/:ID
$r->addRoute( "admin/subjects/delete/:ID", "GET", "AdminController", "deleteSubject" );

// learnit.com/admin/subjects/edit/:ID
// http://localhost/web-2/TPE-WEB-2-%20Repo/admin/subjects/edit/:ID
$r->addRoute( "admin/subjects/edit/:ID", "GET", "AdminController", "editSubject" );
$r->addRoute( "admin/subjects/edit/:ID", "POST", "AdminController", "updateSubject" );

// learnit.com/admin/subjects/delete-error
$r->addRoute( "admin/subjects/delete-error", "GET", "AdminController", "deleteError" );

// TODO Usar para 404
$r->setDefaultRoute( "PublicController", "notFound" );

// Debug a mano de ruteo
//echo "<pre>r->route( \"" . $_GET['action'] . "\", \"" .
//     $_SERVER['REQUEST_METHOD'] . "\" )</pre>";
//run
$r->route( $_GET['action'], $_SERVER['REQUEST_METHOD'] );