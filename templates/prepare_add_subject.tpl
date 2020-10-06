{include file="header.tpl"}
<form action="admin/subjects/add" method="POST">
   <input type="text" name="title" placeholder="Title"/>
   </select>
   <input type="submit" value="Add" />
</form>
<div class="container">
          <table>
          <thead>
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