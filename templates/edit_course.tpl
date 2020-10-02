{include file="header.tpl"}
<form action="admin/course/edit/{$course_s->id}" method="POST">
   <input type="text" name="title" 
          value="{$course_s->title}" placeholder="Title"/>
   <input type="number" name="duration" 
          value="{$course_s->duration}" placeholder="Duration"/>
   <input type="number" name="time_commitent" 
          value="{$course_s->time_commitent}" placeholder="Time commitent"/>
   <select name="id_subject" />
     {foreach from=$subjects_s item=subject}
           {if $subject->id eq $course_s->id_subject}
              <option value="{$subject->id}" selected>
           {else}            
             <option value="{$subject->id}">
           {/if}
           {$subject->title}
        </option>
     {/foreach}
   </select>
   <input type="text" name="difficulty" 
          value="{$course_s->difficulty}" placeholder="Difficulty"/>
   <input type="text" name="topics" 
          value="{$course_s->topics}" placeholder="Topics"/>
   <input type="submit" value="Update" />
   <input type="reset" value="Reset" />
</form>
<div>
    <a href="admin/courses/edit-delete">Edit/Delete Courses</a>
</div>   
{include file="footer.tpl"}