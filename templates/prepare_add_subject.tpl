{include file="header.tpl"}
<div class="container">
  <form action="admin/subjects/add" method="POST" class="md-form">
    <h1 class="display-4">Add a new subject<h1>
        <input type="text" name="title" placeholder="Title" />
        <input type="submit" value="Add" type="button" class="btn blue-gradient btn-sm" />
  </form>
  <h2>Available subjects</h2>
  <table class="table table-sm .table-bordered table-hover">
    <thead class="blue-gradient white-text">
      <th>Subject</th>
    </thead>
    <tbody>
      {foreach from=$subjects_s item=subject}
        <tr>
          <td>{$subject->title}</td>
        </tr>
      {/foreach}
    </tbody>
  </table>
</div>
{include file="footer.tpl"}