{include file="header.tpl"}
<div class="container">
  <form action="admin/courses/add" method="POST">
    <h1 class="display-4">Add a new course<h1>
        <table>
          <th><input type="text" name="title" placeholder="Title" /></th>
          <th><input type="number" name="duration" placeholder="Duration" /></th>
          <th><input type="number" name="time_commitent" placeholder="Time commitent" /></th>
          <th><select name="id_subject" />
            {foreach from=$subjects_s item=subject}
              <option value="{$subject->id}">
                {$subject->title}
              </option>
            {/foreach}
            </select></th>
          <th><input type="text" name="difficulty" placeholder="Difficulty" /></th>
          <th><input type="text" name="topics" placeholder="Topics" /></th>
          <th><input type="button" class="btn blue-gradient btn-sm" type="submit" value="Add" /></th>
          </table>
  </form>
  <h2>Available courses</h2>
  <table class="table table-sm .table-bordered table-hover">
    <thead class="blue-gradient white-text">
      <th>Title</th>
      <th>Duration</th>
      <th>Time commitent</th>
      <th>Subject</th>
      <th>Difficulty</th>
      <th>Topics</th>
    </thead>
    <tbody>
      {foreach from=$courses_s item=course}
        <tr>
          <td>{$course->title}</td>
          <td>{$course->duration} weeks</td>
          <td>{$course->time_commitent} hours</td>
          <td>{$course->subject}</td>
          <td>{$course->difficulty}</td>
          <td>{$course->topics}</td>
        </tr>
      {/foreach}
    </tbody>
  </table>
</div>

{*
<form action="admin/courses/add" method="POST">
  <input type="text" name="title" placeholder="Title" />
  <input type="number" name="duration" placeholder="Duration" />
  <input type="number" name="time_commitent" placeholder="Time commitent" />
  <select name="id_subject" />
  {foreach from=$subjects_s item=subject}
    <option value="{$subject->id}">
      {$subject->title}
    </option>
  {/foreach}
  </select>
  <input type="text" name="difficulty" placeholder="Difficulty" />
  <input type="text" name="topics" placeholder="Topics" />
  <input type="submit" value="Add" />
</form> *}

{include file="footer.tpl"}