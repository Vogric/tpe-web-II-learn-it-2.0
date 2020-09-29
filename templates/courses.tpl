{include file="header.tpl"}
<div class="container">

          <ul class="list-group">

              {foreach from=$courses_s item=course}
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
                <li>
                {$course->title}
                </li>
              {/foreach}
          </ul>
          </div>
   
{include file="footer.tpl"}