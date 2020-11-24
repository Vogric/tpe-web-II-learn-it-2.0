{include file="header.tpl"}

<div class="container">
  <form class="text-center border border-light p-5" method="POST"  action="sign-up">
    <h1 class="h1 mb-5 my-4">Sign up</h1>
     <div>
      <input required type="text" name="username"  class="form-control mb-4" placeholder="User">
    </div>
    <div>
      <input required type="email" name="email"  class="form-control mb-4" placeholder="Mail">
    </div>
    <div>
      <input required type="password" name="password"  class="form-control mb-4" placeholder="Password">
    </div>
    <div>
      <input required type="password" name="password-repeat"  class="form-control mb-4" placeholder="Repeat the password">
    </div>
    {if $error_s}
      <div class="alert alert-danger">
        Error: {$error_s}
      </div>
    {/if} <div class="card mx-xl-5">
    </div>
    <div class="d-flex justify-content-around">
      <div>
        <button class="btn blue-gradient btn-block my-4" type="submit" value="Sign in">Sign up</button>
      </div>
    </div>
  </form>
</div>

{include file="footer.tpl"}