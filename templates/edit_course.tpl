{include file="header.tpl"}
<div class="container">
  <div class="text-center py-3 px-4">
    <div class="py-2">
      <h1 class="card-title h1 my-1 py-1">Edit or delete courses</h1>
      <p class="mb-4 pb-2 px-md-5 mx-md-5">Edit or delete any of the courses that are available on the platform.</p>
    </div>
  </div>
  <form action="admin/courses/edit/{$course_s->id}" method="POST">
    <table class="table table-sm table-bordered table-hover">
      <th> <input type="text" name="title" value="{$course_s->title}" placeholder="Title" /></th>
      <th><input type="number" name="duration" value="{$course_s->duration}" placeholder="Duration" /></th>
      <th><input type="number" name="time_commitent" value="{$course_s->time_commitent}" placeholder="Time commitent" /></th>
      <th><select name="id_subject" />
        {foreach from=$subjects_s item=subject}
          {if $subject->id eq $course_s->id_subject}
            <option value="{$subject->id}" selected>
            {else}
            <option value="{$subject->id}">
            {/if}
            {$subject->title}
          </option>
        {/foreach}
        </select>
      </th>
      <th><input type="text" name="difficulty" value="{$course_s->difficulty}" placeholder="Difficulty" /></th>
      <th><input type="text" name="topics" value="{$course_s->topics}" placeholder="Topics" /></th>

    </table>
    <div class="text-center py-3 px-4">
      <div class="py-2">
        <th><input class="btn blue-gradient btn-sm" type="submit" value="Update" /></th>
        <th><input class="btn purple-gradient btn-sm" type="reset" value="Reset" /></th>
      </div>
    </div>
  </form>

  <div class="text-center">
    <a href="admin/courses/edit-delete" type="button" class="btn blue-gradient btn-sm">Edit/Delete Courses</a>
  </div>
</div>
{include file="footer.tpl"}