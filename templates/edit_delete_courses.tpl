{include file="header.tpl"}
<div class="container">
  <div class="card mx-xl-5">
    <div class="card-body">
      <h2 class="h2 text-center py-4">Edit or Delete a Course</h2>
      <div class="form-row align-items-center blue-gradient white-text">
        <div class="col-4">
          <h5 class="h5">Title</h5>
        </div>
        <div class="col-4">
          <h5 class="h5">Subject</h5>
        </div>
        <div class="col-4">
          <h5 class="h5">Edit/Delete</h5>
        </div>
      </div>
      <div class="form-row align-items-center">
        {foreach from=$courses_s item=course}
          <div class="col-4">
            <p class="h6">{$course->title}</p>
          </div>
          <div class="col-4">
            <p class="h6">{$course->subject}</p>
          </div>
          <div class="col-4">
            <a href="admin/courses/edit/{$course->id}" class="btn yellow btn-sm">Edit</a>
            <a href=" admin/courses/delete/{$course->id}" class="btn red btn-sm">Delete</a>
          </div>
        {/foreach}
        <div class="col-auto">
        </div>
      </div>
    </div>
  </div>
</div>
{include file="footer.tpl"}