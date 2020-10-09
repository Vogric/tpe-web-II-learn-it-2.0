{include file="header.tpl"}
<div class="container">


  {* <div class="card-deck">
    <div class="card">
      <img src="" class="card-img-top" alt="...">
      <div class="card-body">
        {foreach from=$subjects_s item=subject}
          <h5 class="card-title"><a href="courses-by-subject#subject-{$subject->id}">{$subject->title}</a></h5>
          <p class="card-text">Some info introductory info about the subjects..</p>
          <p class="card-text"><small class="text-muted">More info</small></p>
        </div>
      </div>
    </div>
  </div> *}
  

<ul class="list-group">

              {foreach from=$subjects_s item=subject}
            {* 
            [0] => stdClass Object
            (
            [id] => 1
            [title] => Programming
            ) *}
                <li>
                <a href="courses-by-subject#subject-{$subject->id}">{$subject->title}</a>
                </li>
              {/foreach}
          </ul>

  </div>
  
  {include file="footer.tpl"}