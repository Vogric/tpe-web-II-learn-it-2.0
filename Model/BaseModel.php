<?php
class BaseModel{
    protected $db;

    public function __construct()
    {    
        /* host y db se ajustarán según estemos en SourceForge o en local */
        $host = 'localhost';
        $database = 'db_courses';
        $userName = 'root';
        $password = '';        

        try {
            $this->db = new PDO( "mysql:host=$host;dbname=$database;charset=utf8", $userName, $password );
            // Investigaremos estos atributos antes de activarlos
            //$this->$db->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING );
        } catch ( Exception $e ) {
            // Si tenemos error en SourceForge, esto servirá
            var_dump( $e );
            die();
        }        
    }
}