{include file="header.tpl"}
<div class="card card-image" style="background-image: url(./images/courses/detail/background-detail.jpeg);">
  <div class="text-white text-center rgba-stylish-strong py-5 px-4">
    <div class="py-4">
      <h2 class="card-title h2 my-1 py-2"><strong>{$course_s->title}</strong></h2>
      <ul class="list-group bg-transparent">
        <li class="list-group-item  bg-transparent">DURATION: {$course_s->duration} weeks</li>
        <li class="list-group-item  bg-transparent">TIME COMMITMENT: {$course_s->time_commitent} hours</li>
        <li class="list-group-item  bg-transparent">SUBJECT: {$course_s->subject}</li>
        <li class="list-group-item  bg-transparent">DIFFICULTY: {$course_s->difficulty}</li>
        <li class="list-group-item  bg-transparent">TOPIC(S): {$course_s->topics}</li>
      </ul>
      <a class="btn blue-gradient" href="#">Courses list</a>
    </div>
      <div class="md-form amber-textarea active-amber-textarea">
        <i class="fas fa-pencil-alt prefix"></i>
        <textarea id="form22" class="md-textarea form-control" rows="3"></textarea>
        <label class="text-warning" for="form22">Leave a comment about this course</label>
      </div>
      <div class="card-deck">
        <div class="card border-success mb-3" style="max-width: 20rem;">
          <div class="card-header">⭐⭐⭐⭐⭐</div>
            <div class="card-body text-success">
              <h5 class="card-title">Good</h5>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur inim veniam, quis nostrud exercitation.</p>
            </div>
          </div>
          <div class="card-deck">
            <div class="card border-warning mb-3" style="max-width: 20rem;">
              <div class="card-header">⭐⭐⭐</div>
              <div class="card-body text-warning">
                <h5 class="card-title">Not bad</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit,liqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
              </div>
          </div>
          <div class="card-deck">
            <div class="card border-danger mb-3" style="max-width: 20rem;">
              <div class="card-header">⭐</div>
              <div class="card-body text-danger">
                <h5 class="card-title">Bad course</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit,liqua. Ut enim ad minim veniam, quis nostrud exercitatio.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>

{include file="footer.tpl"}