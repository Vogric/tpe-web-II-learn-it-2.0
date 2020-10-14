{*
DESCOMENTAR CODIGO PARA TENERLO IGUAL A courses_by_subject.tpl en caso de cambiar todo

{include file="header.tpl"}
<div class="container">
  <div class="card card-image" style="background-image: url(./images/courses/illustrations/card-subjects-background.jpg);">
    <div class="text-white text-center rgba-stylish-strong py-5 px-4">
      <div class="py-5">
        <h1 class="card-title h1 my-2 py-2">Courses by subject</h1>
        <p class="mb-4 pb-2 px-md-5 mx-md-5">Gain skills with online courses, certificates and degrees offered by the world's leading universities and companies.</p>
        <a href="#" class="btn blue-gradient">See list of courses</a>
      </div>
    </div>
  </div>
  <div class="card-columns">
    {foreach $courses_by_subject_s as $subject => $courses}
      {assign var="subject_id" value="{$courses[0]->subject_id}" }
      <div class="card">
        <img src="./images/subjects/card-image.jpg" class="card-img-top" alt="card-image">
        <div class="card-body">
          <h5 class="card-title" id="subject-{$subject_id}">{$subject}</h5>
          <p class="card-text">Information about the subject</p>
          {if $courses[0]->id }
            <ul>
              {foreach from=$courses item=course}
                <li>
                  <a href="courses/{$course->id}">{$course->title}</a>
                </li>
              {/foreach}
            </ul>
          {else}
            <p class="text-danger">No courses available yet</p>
          {/if}
        </div>
      </div>
    {/foreach}
  </div>
</div>
{include file="footer.tpl"} *}