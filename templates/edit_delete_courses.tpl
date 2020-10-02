{include file="header.tpl"}

<div class="container">

          <table>
          <thead>
            <th>Title</th>
            <th>Subject</th>
            <th colspan="2">&nbsp;</th>            
          </thead>
          <tbody>
              {foreach from=$courses_s item=course}
                <tr>
                   <td>{$course->title}</td>                  
                   <td>{$course->subject}</td>
                   <td>Edit</td>
                   <td><a href="admin/course/delete/{$course->id}">Delete</a></td>
                </tr>
              {/foreach}
          </tbody>
          </table>
          </div>


   
{include file="footer.tpl"}