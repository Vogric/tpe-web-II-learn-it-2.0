{include file="header.tpl"}
<div class="container">
  <form class="text-center border border-light p-5" method="POST" action="sign-in-check">
    <h1 class="h1 mb-4 my-2">Log in</h1>
    <div>
      <label class="mb-4 my-2">Email</label>
      <input type="email" name="email" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="email">
    </div>
    <div>
      <label class="mb-4 my-2">Password</label>
      <input type="password" name="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password">
    </div>
    {if $error}
      <div class="alert alert-danger">
        Error: {$error}
      </div>
    {/if} <div class="card mx-xl-5">
      <div class="card-body">
        <form action="admin/courses/edit/{$course_s->id}" method="POST">
          <h2 class="h2 text-center py-4">Edit or delete courses</h2>
          <input type="text" name="title" value="{$course_s->title}" placeholder="Title" id="defaultFormCardNameEx" class="form-control" />
          <br>
          <input type="number" name="duration" value="{$course_s->duration}" placeholder="Duration" id="defaultFormCardNameEx" class="form-control" />
          <br>
          <input type="number" name="time_commitent" value="{$course_s->time_commitent}" placeholder="Time commitent" id="defaultFormCardNameEx" class="form-control" />
          <br>
          <input type="text" name="difficulty" value="{$course_s->difficulty}" placeholder="Difficulty" id="defaultFormCardNameEx" class="form-control" />
          <br>
          <input type="text" name="topics" value="{$course_s->topics}" placeholder="Topics" id="defaultFormCardNameEx" class="form-control" />
          <br>
          <select name="id_subject" id="defaultFormCardNameEx" class="form-control" />
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
          <div class="text-center py-3 px-4">
            <div class="py-2">
              <th><input class="btn blue-gradient btn-sm" type="submit" value="Update" /></th>
              <th><input class="btn purple-gradient btn-sm" type="reset" value="Reset" /></th>
            </div>
          </div>
        </form>
        <div class="text-center">
          <a href="admin/courses/edit-delete" type="button" class="btn blue-gradient btn-sm">Edit/Delete Courses</a>
        </div>
      </div>
    </div>
    <div class="d-flex justify-content-around">
      <div>
        <button class="btn blue-gradient btn-block my-1" type="submit" value="Sign in">Sign in</button>
      </div>
    </div>
  </form>
</div>
{include file="footer.tpl"}