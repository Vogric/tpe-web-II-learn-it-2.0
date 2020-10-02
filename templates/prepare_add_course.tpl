{include file="header.tpl"}
<form action="admin/course/add" method="POST">
   <input type="text" name="title" placeholder="Title"/>
   <input type="number" name="duration" placeholder="Duration"/>
   <input type="number" name="time_commitent" placeholder="Time commitent"/>
   <input type="number" name="id_subject" placeholder="id_subject"/>
   <!-- TODO Traer por model al tpl los subjects disponibles y armar un combo -->
   <input type="text" name="difficulty" placeholder="Difficulty"/>
   <input type="text" name="topics" placeholder="Topics"/>
   <input type="submit" value="Add" />
</form>
<div class="container">

          <table>
          <thead>
            <th>Title</th>
            <th>Duration</th>
            <th>Time commitent</th>
            <th>id_subject</th>
            <th>Difficulty</th>
            <th>Topics</th>
          </thead>
          <tbody>
              {foreach from=$courses_s item=course}
                <tr>
                   <td>{$course->title}</td>
                   <td>{$course->duration} weeks</td>
                   <td>{$course->time_commitent} hours</td>
                   <td>{$course->id_subject}</td>
                   <td>{$course->difficulty}</td>
                   <td>{$course->topics}</td>
                </tr>
              {/foreach}
          </tbody>
          </table>
          </div>
   
{include file="footer.tpl"}