{include file="header.tpl"}

<div class="container">

          <table>
          <thead>
            <th>Title</th>          
            <th colspan="2">&nbsp;</th>            
          </thead>
          <tbody>
              {foreach from=$subjects_s item=subject}
                <tr>
                   <td>{$subject->title}</td>                                    
                   <td><a href="admin/subjects/edit/{$subject->id}">Edit</a></td>
                   <td><a href="admin/subjects/delete/{$subject->id}">Delete</a></td>
                </tr>
              {/foreach}
          </tbody>
          </table>
          </div>
{include file="footer.tpl"}