{include file="header.tpl"}
<form action="admin/subjects/edit/{$subject_s->id}" method="POST">
   <input type="text" name="title" 
          value="{$subject_s->title}" placeholder="Title"/>
   <input type="submit" value="Update" />
   <input type="reset" value="Reset" />
</form>
<div>
    <a href="admin/subjects/edit-delete">Edit/Delete Subjects</a>
</div>   
{include file="footer.tpl"}