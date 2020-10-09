{include file="header.tpl"}
<div class="container">
                {* {if $tarea->completed eq 1}
                    <li class="list-group-item list-group-item-success">{$tarea->title|upper}<span class="badge badge-primary badge-pill">{$tarea->description}</span> <button type="button" class="btn btn-outline-danger"><a href="delete/{$tarea->id}">Borrar</a></button></li>
                {else}
                    <li class="list-group-item ">{$tarea->title}<span class="badge badge-primary badge-pill">{$tarea->description}</span> <button type="button" class="btn btn-outline-danger"><a href="delete/{$tarea->id}">Borrar</a></button><button type="button" class="btn btn-outline-success"><a href="completar/{$tarea->id}">Completar</a></button></li>    
                {/if} *}
            {* 
            [0] => stdClass Object
            (
            [id] => 1
            [title] => Pre-Programming
            [duration] => 11
            [time_commitent] => 15
            [id_subject] => 1
            [difficulty] => Introductory
            [topics] => Programming basics - Concepts - Computational thinking
            ) *}
            <table class="table table-sm .table-bordered">
                <thead class="blue-gradient white-text">
                    <th scope="col">Course</th>
                    <th scope="col">Subject</th>
                <tbody>
                    {foreach from=$courses_s item=course}
                        <tr>
                            <td><a href="courses/{$course->id}">{$course->title}</a></td>
                            <td><a href="subjects/{$course->id}">{$course->subject}</a></td>
                        </tr>
                    {/foreach}
                </tbody>
                </thead>
           </table>
          </div>


          

   
{include file="footer.tpl"}