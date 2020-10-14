{include file="header.tpl"}
<div class="card mx-xl-5">
  <div class="card-body">
    <form action="admin/subjects/edit/{$subject_s->id}" method="POST">
      <h2 class="h2 text-center py-4">Edit or delete subjects</h2>
      <input type="text" name="title" value="{$subject_s->title}" placeholder="Title" id="defaultFormCardNameEx" class="form-control" />
      <div class="text-center py-3 px-4">
        <div class="py-2">
          <input class="btn blue-gradient btn-sm" type="submit" value="Update" />
          <input class="btn purple-gradient btn-sm" type="reset" value="Reset" />
        </div>
      </div>
    </form>
    <div class="text-center">
      <a href="admin/subjects/edit-delete" type="button" class="btn blue-gradient btn-sm">Edit/Delete Subjects</a>
    </div>
  </div>
</div>
{include file="footer.tpl"}