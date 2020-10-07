{include file="header.tpl"}
<div class="container">
    {foreach $courses_by_subject_s as $subject => $courses}
    {* TODO anchors name o ids para subjects *}
        <h2>{$subject}</h2>
            <ul>
            {foreach from=$courses item=course}
                <li>
                <a href="courses/{$course->id}">{$course->title}</a>
                </li>
            {/foreach}
            </ul>
    {/foreach}
    {* TODO mostrar subjects sin cursos *}
</div>   
{include file="footer.tpl"}