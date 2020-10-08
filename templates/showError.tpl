{* {include 'header.tpl'}
{if $error}
<div class="alert alert-danger alert_error" role="alert">
  <h4 class="alert-heading">ERROR!</h4>
  <p>{$error}</p>
  <hr>
  <a class="btn btn-danger" href="???">OK</a>
</div>
{else}
<div class="alert alert-danger alert_error" role="alert">
  <h4 class="alert-heading">ERROR!</h4>
  <p>An error has occurred, please try again.</p>
  <hr>
  <a class="btn btn-danger" href="???">OK</a>
</div>   
{/if}
{include 'footer.tpl'} *}