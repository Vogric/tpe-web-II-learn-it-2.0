{include file="header.tpl"}
<div class="container">
    {if $error}
    <div>
       Error: {$error}
    </div>
    {/if}
    <form method="POST" action="sign-in-check">

        <div>
            <label>Email</label>
            <input type="email" name="email">
        </div>

        <div>
            <label>Password</label>
            <input type="password" name="password" >
        </div>

        <input type="submit" class="btn btn-primary" value="Sign in"/>        
    </form>    
</div>


<div class="text-center">
  <a href="login" class="btn btn-default btn-rounded" data-toggle="modal" data-target="#darkModalForm">Ejemplo como seria con modal</a>
<div class="modal fade" id="darkModalForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog form-dark" role="document">
    <!--Content-->
    <div class="modal-content card card-image" style="background-image: url('https://wpengine.com/wp-content/uploads/2015/02/security-compressor-1000x628.jpg');">
      <div class="text-white rgba-stylish-strong py-5 px-5 z-depth-4">
        <!--Header-->
        <div class="modal-header text-center pb-4">
          <h3 class="modal-title w-100 white-text font-weight-bold" id="myModalLabel"><strong>LOG</strong> <a class="green-text font-weight-bold"><strong> IN</strong></a></h3>
          <button type="button" class="close white-text" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <!--Body-->
        <div class="modal-body">
          <!--Body-->
          <div class="md-form mb-5">
            {if $error}
              <div>
                Error: {$error}
              </div>
            {/if}
            <form method="POST" action="sign-in-check">
              <input type="email" id="Form-email5" class="form-control validate white-text">
              <label data-error="wrong" data-success="right" for="Form-email5">Your email</label>
          </div>
          <div class="md-form pb-3">
            <input type="password" id="Form-pass5" class="form-control validate white-text">
            <label data-error="wrong" data-success="right" for="Form-pass5">Your password</label>
          </div>
          <div class="row d-flex align-items-center mb-4">
            <div class="text-center mb-3 col-md-12">
              <button type="submit" class="btn btn-success btn-block btn-rounded z-depth-1" value="Sign in">Log in</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
{include file="footer.tpl"}