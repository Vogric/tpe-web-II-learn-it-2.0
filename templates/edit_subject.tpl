{include file="header.tpl"}
<div class="container">
  <div class="text-center py-3 px-4">
    <div class="py-2">
      <h1 class="card-title h1 my-1 py-1">Edit or delete subjects</h1>
      <p class="mb-4 pb-2 px-md-5 mx-md-5">Edit or delete any of the subjects that are available on the platform.</p>
    </div>
  </div>
  <div class="text-center py-3 px-4">
    <form action="admin/subjects/edit/{$subject_s->id}" method=" POST">
      <table class="table table-sm .table-bordered table-hover">
        <input type="text" name="title" value="{$subject_s->title}" placeholder="Title" />
        <input type="button" class="btn blue-gradient btn-sm" type="submit" value="Update" />
        <input type="button" class="btn purple-gradient btn-sm" type="reset" value="Reset" />
      </table>
    </form>
    <a href="admin/subjects/edit-delete" type="button" class="btn blue-gradient btn-sm">Edit/Delete Subjects</a>
  </div>
</div>


{*
<form action="admin/subjects/edit/{$subject_s->id}" method="POST">
  <input type="text" name="title" value="{$subject_s->title}" placeholder="Title" />
  <input type="submit" value="Update" />
  <input type="reset" value="Reset" />
</form>
<div>
  <a href="admin/subjects/edit-delete">Edit/Delete Subjects</a>
</div> *}
{include file="footer.tpl"}