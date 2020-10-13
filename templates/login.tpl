{include file="header.tpl"}
<div class="container">
  {if $error}
    <div>
      Error: {$error}
    </div>
  {/if}
  <form class="text-center border border-light p-5" method="POST" action="sign-in-check">
    <h2 class="h2 mb-4">Log in</h2>
    <div>
      <label>Email</label>
      <input type="email" name="email" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="email">
    </div>
    <div>
      <label>Password</label>
      <input type="password" name="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password">
    </div>
    <div class="d-flex justify-content-around">
      <div>
        <button class="btn blue-gradient btn-block my-4" type="submit" value="Sign in">Sign in</button>
      </div>
    </div>
  </form>
</div>
{include file="footer.tpl"}