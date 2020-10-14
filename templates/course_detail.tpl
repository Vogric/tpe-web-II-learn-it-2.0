{include file="header.tpl"}
<div class="card card-image" style="background-image: url(./images/courses/detail/background-detail.jpeg);">
  <div class="text-white text-center rgba-stylish-strong py-4 px-4">
    <div class="py-4">
      <h2 class="card-title h2 my-1 py-3"><strong>{$course_s->title}</strong></h2>
      <p class="mb-4 pb-2 px-md-5 mx-md-5">Info extra del curso</p>
      <ul class="list-group bg-transparent">
        <li class="list-group-item  bg-transparent">DURATION: {$course_s->duration} weeks</li>
        <li class="list-group-item  bg-transparent">TIME COMMITMENT: {$course_s->time_commitent} hours</li>
        <li class="list-group-item  bg-transparent">SUBJECT: {$course_s->subject}</li>
        <li class="list-group-item  bg-transparent">DIFFICULTY: {$course_s->difficulty}</li>
        <li class="list-group-item  bg-transparent">TOPIC(S): {$course_s->topics}</li>
      </ul>
      <a class="btn blue-gradient" href="#">Courses list</a>
    </div>
  </div>
</div>
{include file="footer.tpl"}