<?php

class RedirectController 
{
    public function goAdmin()
    {
        header("Location: ".BASE_URL."admin");
    }

    public function blank() {
        echo "<h1>You Reached Blank</h1>";        
    }
}