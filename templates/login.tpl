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
{include file="footer.tpl"}