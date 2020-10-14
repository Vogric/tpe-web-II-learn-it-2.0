{include file="header.tpl"}
<div class="container">
  <div class="card card-image" style="background-image: url(./images/courses/illustrations/card-course-background.png);">
    <div class="text-white text-center rgba-stylish-strong py-5 px-4">
      <div class="py-5">
        <h1 class="card-title h1 my-2 py-2">¡New courses available!</h1>
        <p class="mb-4 pb-2 px-md-5 mx-md-5">Gain skills with online courses, certificates and degrees offered by the world's leading universities and companies.</p>
        <a href="subjects" class="btn peach-gradient">Course by subjects</a>
      </div>
    </div>
  </div>
  <div class="row row-cols-1 row-cols-md-3">
    {foreach from=$courses_s item=course}
      <div class="col mb-4">
        <div class="card">
          <div class="view overlay">
            <img class="card-img-top" src="./images/courses/illustrations/react.png" alt="Card image cap">
            <a href="courses/{$course->id}">
              <div class="mask rgba-white-slight"></div>
            </a>
          </div>
          <div class="card-body">
            <h4 class="card-title"><a href="courses/{$course->id}">{$course->title}</a></h4>
            {* Ver 25 *}
            <p class="card-text"><a href="subjects/#{$course->id_subject}">{$course->subject}</a></p>
            <a class="btn blue-gradient btn-md" href="courses/{$course->id}">See more</a>
          </div>
        </div>
      </div>
    {/foreach}
  </div>
</div>
{include file="footer.tpl"}