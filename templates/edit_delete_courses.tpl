{include file="header.tpl"}
<div class="container">
  <h1 class="display-4">Edit or Delete a Course<h1>
      <table class="table table-sm .table-bordered table-hover">
        <thead class="blue-gradient white-text">
          <th>Title</th>
          <th>Subject</th>
          <th colspan="2">&nbsp;</th>
        </thead>
        <tbody>
          {foreach from=$courses_s item=course}
            <tr>
              <td>{$course->title}</td>
              <td>{$course->subject}</td>
              <td><a href="admin/courses/edit/{$course->id}" class="btn yellow btn-sm">Edit</a></td>
              <td><a href=" admin/courses/delete/{$course->id}" class="btn red btn-sm">Delete</a></td>
            </tr>
          {/foreach}
        </tbody>
      </table>
</div>



{include file="footer.tpl"}