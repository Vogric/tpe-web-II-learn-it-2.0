{include file="header.tpl"}
<div class="container">
  <div class="card mx-xl-5">
    <div class="card-body">
      <form action="admin/subjects/add" method="POST">
        <h2 class="h2 text-center py-4">Add a new subject</h2>
        <input required type="text" name="title" placeholder="Title" id="defaultFormCardNameEx" class="form-control">
        <div class="text-center py-4 mt-3">
          <button class="btn btn-outline-blue" type="submit">Add subject<i class="fa fa-paper-plane-o ml-2"></i></button>
        </div>
      </form>
    </div>
  </div>
  <h3 class="h3 text-center py-4">Available subjects</h3>
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