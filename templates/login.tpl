{include file="header.tpl"}
<div class="container">
  <form class="text-center border border-light p-5" method="POST" action="sign-in-check">
    <h1 class="h1 mb-4 my-2">Log in</h1>
    <div>
      <label class="mb-4 my-2">Mail</label>
      <input required type="email" name="email" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="Mail">
    </div>
    <div>
      <label class="mb-4 my-2">Password</label>
      <input required type="password" name="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password">
    </div>
    {if $error}
      <div class="alert alert-danger">
        Error: {$error}
      </div>
    {/if} <div class="card mx-xl-5">
    </div>
    <div class="d-flex justify-content-around">
      <div>
        <button class="btn blue-gradient btn-block my-1" type="submit" value="Sign in">Sign in</button>
      </div>
    </div>
  </form>
</div>
{include file="footer.tpl"}