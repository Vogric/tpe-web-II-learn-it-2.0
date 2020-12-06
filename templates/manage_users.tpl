{include file="header.tpl"}
<div class="container">
  <div class="card mx-xl-5">
    <div class="card-body">
      <h2 class="h2 text-center py-4">Users: Change role or Delete</h2>
      <div class="form-row align-items-center blue-gradient white-text">
        <div class="col-7">
          <h5 class="h5">Username | Email</h5>
        </div>        
        <div class="col-3">
          <h5 class="h5">Role/Delete</h5>
        </div>
      </div>
      <div class="form-row align-items-center">
        {foreach from=$users_s item=user}
          <div class="col-7">
            <p class="h6">{$user->username} |
            {$user->email}</p>
        </div>
          <div class="col-3">            
            {if $user->id == $user_id_s} 
               <span class="btn grey btn-sm">Current User</span>
            {else}
                {if $user->is_admin}
                    <a href="admin/users/{$user->id}/become-common" class="btn yellow btn-sm">Admin</a>
                {else}
                    <a href="admin/users/{$user->id}/become-admin" class="btn yellow btn-sm">Common</a>
                {/if}
                <a href="admin/users/delete/{$user->id}" class="btn red btn-sm">Delete</a>
            {/if}
            
          </div>
        {/foreach}
      </div>
    </div>
  </div>
</div>
{include file="footer.tpl"}