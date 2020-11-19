{include file="header.tpl"}

<form method="POST" action="sign-up" class="col-md-4 offset-md-4 mt-4" class="form-group">

  <div class="form-control">
    <input type="text" name="username" class="form-control" placeholder="User">
  </div>
  <div class="form-control">
    <input type="email" name="email" class="form-control" placeholder="Email">
  </div>
  <div class="form-control">
      <input type="password" name="password" class="form-control" placeholder="Password">
  </div>
    <div class="form-control">
      <input type="password" name="repeat-password" class="form-control" placeholder="Repeat the Password">
  </div>

  {if $error_s}
    <div class="alert alert-danger">
      Error: {$error_s}
    </div>
  {/if}

  <input type="submit" class="btn btn-primary"/>

</form>

{include file="footer.tpl"}