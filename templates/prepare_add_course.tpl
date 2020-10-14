{include file="header.tpl"}
<div class="container">
  <div class="card mx-xl-5">
    <div class="card-body">
      <form action="admin/courses/add" method="POST">
        <h2 class="h2 text-center py-4">Add a new course</h2>
        <input required type="text" name="title" placeholder="Title" id="defaultFormCardNameEx" class="form-control">
        <br>
        <input required type="number" name="duration" placeholder="Duration" id="defaultFormCardNameEx" class="form-control">
        <br>
        <input required type="number" name="time_commitent" placeholder="Time commitent" id="defaultFormCardNameEx" class="form-control">
        <br>
        <input required type="text" name="difficulty" placeholder="Difficulty" id="defaultFormCardNameEx" class="form-control">
        <br>
        <input required type="text" name="topics" placeholder="Topics" id="defaultFormCardNameEx" class="form-control">
        <br>
        <select required name="id_subject" class="browser-default custom-select" />
            <option value="" disabled selected>Choose a subject</option>

            {* Subjects para el desplegable *}
            {foreach from=$subjects_s item=subject}
              <option value="{$subject->id}">
                 {$subject->title}
              </option>
            {/foreach}

        </select>
        <div class="text-center py-4 mt-3">
          <button class="btn btn-outline-blue" type="submit">Add course<i class="fa fa-paper-plane-o ml-2"></i></button>
        </div>
      </form>
    </div>
  </div>
  <h3 class="h3 text-center py-4">Available courses</h3>
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

      {* Los cursos ya existentes en la tabla course de la base de datos *}
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
{include file="footer.tpl"}