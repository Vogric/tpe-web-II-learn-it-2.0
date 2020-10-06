<!doctype html>
        <html lang="en">
            <head>
            <!-- Required meta tags -->
            <base href="{$base_url}">
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
            <link rel="stylesheet" href="./css/style.css">
            <title>{$title_s}</title>
            </head>
            <body>
               {* <header class="bg-dark pt-4">
                     <div class="d-flex justify-content-between flex-wrap align-items-center">
                        <a href=""><img class="logo row ml-5 mb-3" src="./Images/logo-learnit.png" alt="logo"></a>
                     <div class="mr-5">
                        <a class="btn btn-outline-light ml-4 mt-1" href="login">Login</a>
                        <a class="btn btn-outline-light ml-4 mt-1" href="register">Register</a>
                        <a class="btn btn-outline-light ml-4 mt-1" href="admin">Admin</a>
                        <a class="btn btn-outline-light ml-4 mt-1" href="login">Sign in</a>
                        <a class="btn btn-outline-light ml-4 mt-1" href="logout">Sign out</a>
                     </div>
                     </div>
                     <!--Barra de navegación-->
                     <nav class="navbar navbar-expand-md navbar-dark bg-dark">
                     <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                     aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                     <span class="navbar-toggler-icon"></span>
                     </button>
                     <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav m-auto">
                           <li><a class="navbar-brand ml-5 mr-5 mb-2" href="{$base_url}">Home</a></li>
                           <li><a class="navbar-brand ml-5 mr-5 mb-2" href="courses">Courses</a></li>
                           <li><a class="navbar-brand ml-5 mr-5 mb-2" href="courses-by-subject">Courses by subject</a></li>
                        </ul>
                     </div>
                     </nav>
               </header> *}
            <div>
            <a href="{$base_url}">Home</a>
            <a href="courses">Courses</a>
            <a href="courses-by-subject">Courses by subject</a>
            {if isset($logged) }
               {* TODO: Mostrar sólo para admins *}
               <a href="admin">Admin</a>            
               {$email_s}
               <a href="logout">Sign out</a>
            {else}
               <a href="login">Sign in</a>
            {/if}
            </div>
