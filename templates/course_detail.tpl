{include file="header.tpl"}
<div class="container">

  <div class="card mb-3" style="max-width: 540px;">
    <div class="row no-gutters">
      <div class="col-md-6">
        <img src="https://i.pinimg.com/736x/7f/4b/cf/7f4bcfaf57344918e51030d12fb1617a.jpg" class="card-img" alt="...">
      </div>
      <div class="col-md-6">
        <div class="card-body">
          <h5 class="card-title">{$course_s->title}</h5>
          <p class="card-text">Some info introductory info about the course.</p>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">DURATION: {$course_s->duration} weeks</li>
            <li class="list-group-item">TIME COMMITMENT: {$course_s->time_commitent} hours</li>
            <li class="list-group-item">SUBJECT: {$course_s->subject}</li>
            <li class="list-group-item">DIFFICULTY: {$course_s->difficulty}</li>
            <li class="list-group-item">TOPIC(S): {$course_s->topics}</li>
          </ul>
          <a href="courses/" class="btn btn-primary">Courses list</a>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
    </div>
  </div>

  {* <div class="card" style="width: 18rem;">
    <img src="" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">{$course_s->title}</h5>
      <p class="card-text">Some info introductory info about the course</p>
      <ul class="list-group list-group-flush">
        <li class="list-group-item">DURATION: {$course_s->duration} weeks</li>
        <li class="list-group-item">TIME COMMITMENT: {$course_s->time_commitent} hours</li>
        <li class="list-group-item">SUBJECT: {$course_s->subject}</li>
        <li class="list-group-item">DIFFICULTY: {$course_s->difficulty}</li>
        <li class="list-group-item">TOPIC(S): {$course_s->topics}</li>
      </ul>
      <a href="courses/" class="btn btn-primary">Courses list</a>
    </div>
  </div> *}


  {* <ul class="list-group">
    <li class="list-group-item list-group-item-primary">{$course_s->title}</li>
    <li class="list-group-item">DURATION: {$course_s->duration} weeks</li>
    <li class="list-group-item">TIME COMMITMENT: {$course_s->time_commitent} hours</li>
    <li class="list-group-item">SUBJECT: {$course_s->subject}</li>
    <li class="list-group-item">DIFFICULTY: {$course_s->difficulty}</li>
    <li class="list-group-item">TOPIC(S): {$course_s->topics}</li>
  </ul>
  <a href="courses/" btn btn-primary>Courses list</a>
  <button type="button" class="btn btn-primary btn-lg btn-block"><a href="courses/" btn btn-primary>Courses list</a></button> *}
</div>

{include file="footer.tpl"}