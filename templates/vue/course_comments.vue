{literal}
<div id="vue-course-comments">
  
  <div v-if="is_logged" class="comment-form-box card-deck text-dark" >
    <form id="course-comment-form" class="card comment-form" method="POST">
      <div>
        <label for="new-text">Leave a comment about this course</label>
        <textarea required id="new-text" rows="2"></textarea>
      </div>
      <div>
        <label for="new-score">Score</label>
        <input required value="" type="number" name="new-score" id="new-score" min="1" max="5"
          title="Your score for this course" />
      </div>
      <input id="post-new-comment" type="submit" value="Comment">
    </form>
  </div>

  <!-- Promedio -->
  <div v-if="comments.length > 0" class="card-deck average-box">
    <div class="card score border-success mb-3">
      <div class="card-header average-score">Average</div>
      <div class="card-body text-success">
        <h5 class="card-title">{{ average }}</h5>
        <p v-if="comments.length == 1" class="card-text">
          Only 1 comment in total.</p>
        <p v-if="comments.length > 1" class="card-text">
          {{ comments.length }} comments in total.</p>
      </div>
    </div>
  </div> <!-- cierra Promedio -->


  <!-- Un card deck contiene todos los comentarios -->
  <div class="card-deck">

    <!-- Un card para cada comentario -->
    <div v-for="comment in comments" class="card score mb-3">

      <div class="card-header">{{ comment.stars }}</div>
      <div class="card-body text-success">
        <h5 class="card-title">{{ comment.username }}</h5>
        <p class="card-text">{{ comment.text }}</p>
      </div>
      <div v-if="is_admin" class="card-footer">
        <input type="button" class="csr-delete-comment" v-bind:data-id="comment.id" value="Delete" v-on:click="deleteComment"/>
      </div>

    </div>

  </div> <!-- cierra card-deck de comentarios -->


</div><!-- cierra id="vue-course-comments" -->
{/literal}