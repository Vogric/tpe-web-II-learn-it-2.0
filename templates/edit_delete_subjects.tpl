{include file="header.tpl"}
<div class="container">
  <h1 class="display-4">Edit or Delete a Subject<h1>
      <table class="table table-sm .table-bordered table-hover">
        <thead class="blue-gradient white-text">
          <th>Title</th>
          <th colspan="2">&nbsp;</th>
        </thead>
        <tbody>
          {foreach from=$subjects_s item=subject}
            <tr>
              <td>{$subject->title}</td>
              <td><a href="admin/subjects/edit/{$subject->id}" class="btn yellow btn-sm">Edit</a></td>
              <td><a href="admin/subjects/delete/{$subject->id}" class="btn red btn-sm">Delete</a></td>
            </tr>
          {/foreach}
        </tbody>
      </table>
</div>
{include file="footer.tpl"}