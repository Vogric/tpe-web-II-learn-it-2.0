{include file="header.tpl"}
<div class="container">

          <ul class="list-group">

              {foreach from=$subjects_s item=subject}
            {* 
            [0] => stdClass Object
            (
            [id] => 1
            [title] => Programming
            ) *}
                <li>
                <a href="courses-by-subject#subject-{$subject->id}">{$subject->title}</a>
                </li>
              {/foreach}
          </ul>
          </div>
   
{include file="footer.tpl"}