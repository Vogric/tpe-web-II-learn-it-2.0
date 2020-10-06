<!doctype html>
        <html lang="en">
            <head>
            <!-- Required meta tags -->
            <base href="{$base_url}">
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>{$title_s}</title>
            </head>
            <body>
            <h1>{$title_s}</h1>
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