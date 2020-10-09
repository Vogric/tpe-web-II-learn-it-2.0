{include file="header.tpl"}
<div class="container">

  <div class="card card-image" style="background-image: url(https://www.adrpanama.com/wp-content/uploads/2018/08/grado-tecnicas-aplicaciones-software.jpg);">
    <div class="text-white text-center rgba-stylish-strong py-3 px-4">
      <div class="py-4">
        <h2 class="card-title h2 my-5 py-4"><strong>{$course_s->title}</strong></h2>
        <p class="mb-4 pb-2 px-md-5 mx-md-5">Info extra del curso</p>
        <li>DURATION: {$course_s->duration} weeks</li>
        <li>TIME COMMITMENT: {$course_s->time_commitent} hours</li>
        <li>SUBJECT: {$course_s->subject}</li>
        <li>DIFFICULTY: {$course_s->difficulty}</li>
        <li>TOPIC(S): {$course_s->topics}</li>
        </ul>
        <a class="btn blue-gradient" href="courses/">Courses list</a>
      </div>
    </div>
  </div>




  <!-- Card -->
  {* <div class="card card-cascade wider reverse">

    <!-- Card image -->
    <div class="view view-cascade overlay">
      <img class="img-fluid" src="https://cdn-images-1.medium.com/max/2560/1*QzOYS02MczuIwP8gF0rzEQ.png" alt="Card image cap">
      <a href="#!">
        <div class="mask flex-center waves-effect waves-light rgba-yellow-strong"></div>
      </a>
    </div> *}

    <!-- Card content -->
    {* <div class="card-body card-body-cascade text-center">

      <!-- Title -->
      <h4 class="card-title"><strong>{$course_s->title}</strong></h4>
      <!-- Subtitle -->
      <h6 class="font-weight-bold indigo-text py-2">Ver Subject dinamico</h6>
      <!-- Text -->
      <p class="card-text">Info extra del curso
      </p>
      <li class="list-group-item">DURATION: {$course_s->duration} weeks</li>
      <li class="list-group-item">TIME COMMITMENT: {$course_s->time_commitent} hours</li>
      <li class="list-group-item">SUBJECT: {$course_s->subject}</li>
      <li class="list-group-item">DIFFICULTY: {$course_s->difficulty}</li>
      <li class="list-group-item">TOPIC(S): {$course_s->topics}</li>
      <a class="btn blue-gradient" href="courses/">Courses list</a>
    </div>
  </div> *}

  {* <div class="card mb-3" style="max-width: 540px;">
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
          <p class="card-text"><small class="text-muted">LearnIT ©</small></p>
        </div>
      </div>
    </div>
  </div> *}



  <!-- Card -->

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