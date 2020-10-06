{include file="header.tpl"}
{* Acá irán los subjects, vista pública *}
<div class="container">
    <ul class="list-group">
        <li>
            <a href="courses/">Available courses</a>
        </li>
          </ul>
    {* <div class="card" style="width: 18rem;">
        <img src="" class="card-img-top" alt="...">
        <div class="card-body">
            {foreach from=$courses_s item=course}
                <h5 class="card-title">{$course->subject}</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="subjects/{$course->id} class="btn btn-primary">{$course->subject}</a>
            {/foreach}
        </div>
    </div> *}
</div>
{include file="footer.tpl"}