<?php
require_once "./View/AdminView.php";
require_once "./Model/CourseModel.php";
require_once "./Model/SubjectModel.php";

class AdminController
{
    private $view;
    private $course_model;
    private $subject_model;

    public function __construct()
    {
        $this->view = new AdminView();
        $this->course_model = new CourseModel();
        $this->subject_model = new SubjectModel();
    }

    public function admin()
    {
        $this->view->showAdmin();
    }

    public function prepareAddCourse()
    {
        $courses = $this->course_model->getCourses();
        $subjects = $this->subject_model->getSubjects();
        $this->view->showPrepareAddCourse( $courses, $subjects );
    }

    public function addCourse()
    {
        // array(6) {
        //     ["title"]=> string(8) "Thinking"
        //     ["duration"]=> string(1) "1"
        //     ["time_commitent"]=> string(1) "1"
        //     ["id_subject"]=> string(1) "2"
        //     ["difficulty"]=> string(4) "High"
        //     ["topics"]=> string(11) "Contemplate"
        //   }
        // $courses = $this->course_model->getCourses();
        // $subjects = $this->subject_model->getSubjects();
        // $this->view->showPrepareAddCourse( $courses, $subjects );
        $new_course = array(
            $_POST["title"],
            ((int) $_POST["duration"]),
            ((int) $_POST["time_commitent"]),
            ((int) $_POST["id_subject"]),
            $_POST["difficulty"],
            $_POST["topics"]                    
        );
        $this->course_model->addCourse($new_course);
        // Después de agregar vuelve a la página de agregar
        // TODO Refactor a mejor lugar
        header("Location: ".BASE_URL."admin/course/add");
    }

    public function editOrDeleteCourses() {

        // $courses = $this->course_model->getCourses();        
        // $this->view->showPrepareAddCourse( $courses, $subjects );
        echo "<h2>Edit-Delete Courses: WIP</h2>";
    }


    public function prepareAddSubject() {

        // $courses = $this->course_model->getCourses();        
        // $this->view->showPrepareAddCourse( $courses, $subjects );
        echo "<h2>Prepare Add Subject: WIP</h2>";
    }

    public function editOrDeleteSubjects() {

        // $courses = $this->course_model->getCourses();        
        // $this->view->showPrepareAddCourse( $courses, $subjects );
        echo "<h2>Edit-Delete Subjects: WIP</h2>";
    }


    // public function courseDetail( $params = null )
    // {
    //     $course_id = $params[':ID'];
    //     $course = $this->model->getCourseDetail( $course_id );
    //     $this->view->showCourseDetail( $course );
    // }

    // public function InsertCourses()
    // {

    //     $completed = 0;
    //     if ( isset( $_POST['input_completed'] ) ) {
    //         $completed = 1;
    //     }

    //     $this->model->InsertCourses( $_POST['input_title'], $_POST['input_description'], $completed, $_POST['input_priority'] );
    //     $this->view->ShowHomeLocation();
    // }

    // public function EditCourse( $params = null )
    // {
    //     $course_id = $params[':ID'];
    //     $course = $this->model->GetCourse( $course_id );

    //     $this->view->ShowEditCourse( $course );
    // }

    // public function BorrarLaTaskQueVienePorParametro( $params = null )
    // {
    //     $course_id = $params[':ID'];
    //     $this->model->DeleteTaskDelModelo( $course_id );
    //     $this->view->ShowHomeLocation();
    // }

    // public function MarkAsCompletedTask( $params = null )
    // {
    //     $course_id = $params[':ID'];
    //     $this->model->MarkAsCompletedTask( $course_id );
    //     $this->view->ShowHomeLocation();
    // }
}