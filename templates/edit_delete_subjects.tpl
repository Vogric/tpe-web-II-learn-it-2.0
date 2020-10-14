{include file="header.tpl"}
<div class="container">
  <div class="card mx-xl-5">
    <div class="card-body">
      <h2 class="h2 text-center py-4">Edit or Delete a Subject</h2>
      <div class="form-row align-items-center blue-gradient white-text">
        <div class="col-7">
          <h5 class="h5">Title</h5>
        </div>
        <div class="col-3">
          <h5 class="h5">Edit/Delete</h5>
        </div>
      </div>
      <div class="form-row align-items-center">
        {foreach from=$subjects_s item=subject}
          <div class="col-7">
            <p class="h6">{$subject->title}</p>
          </div>
          <div class="col-3">
            <a href="admin/subjects/edit/{$subject->id}" class="btn yellow btn-sm">Edit</a>
            <a href="admin/subjects/delete/{$subject->id}" class="btn red btn-sm">Delete</a>
          </div>
        {/foreach}
      </div>
    </div>
  </div>
</div>
{include file="footer.tpl"}