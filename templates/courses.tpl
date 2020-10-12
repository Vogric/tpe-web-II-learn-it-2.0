{include file="header.tpl"}
<div class="container">
  <table class="table table-sm .table-bordered table-hover">
    <thead class="blue-gradient white-text">
      <th scope="col">Course</th>
      <th scope="col">Subject</th>
    <tbody>
      {foreach from=$courses_s item=course}
        <tr>
          <td><a href="courses/{$course->id}">{$course->title}</a></td>
          <td><a href="subjects/{$course->id}">{$course->subject}</a></td>
        </tr>
      {/foreach}
    </tbody>
    </thead>
  </table>
</div>
{include file="footer.tpl"}