{include file="header.tpl"}
<div class="container">
    {foreach $courses_by_subject_s as $subject => $courses}
        
        {* Defino variable de template para claridad *}
        {assign var="subject_id" value="{$courses[0]->subject_id}" }
        
        <h2 id="subject-{$subject_id}">{$subject}</h2>
            {* id nulo o no, implica sin cursos o hay cursos, respectivamente *}
            {if $courses[0]->id }
                <ul>
                {foreach from=$courses item=course}
                    <li>
                    <a href="courses/{$course->id}">{$course->title}</a>
                    </li>
                {/foreach}
                </ul>
            {else}
                <p>No courses available yet</p>
            {/if}
    {/foreach}
</div>   
{include file="footer.tpl"}