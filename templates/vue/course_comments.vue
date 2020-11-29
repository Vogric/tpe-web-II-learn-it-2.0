{literal}
<div id="vue-course-comments">

     <p>{{ wip_message }}</p>
      
      <div class="card-deck comment-form-box">
        <form id="course-comment-form" class="card score md-form mb-3" action="#" method="POST">
          <i class="fas fa-pencil-alt prefix"></i>
          <textarea id="form22" class="md-textarea text-white form-control" rows="2"></textarea>
          <label class="text-warning" for="form22">Leave a comment about this course</label>
        </form>
      </div>

      <!-- Promedio mock -->
      <div class="card-deck average-box">        
        <div class="card score border-success mb-3" >
          <!-- TODO ajustar color de las letras en el card-header o
                    rever como mostrar promedio -->
          <div class="card-header average-score">Average</div>
          <div class="card-body text-success">
              <h5 class="card-title">3</h5>
              <p class="card-text">3 comments in total.</p>
          </div>
        </div>
      </div>


      <!-- Un card deck contiene todos los comentarios -->
      <div class="card-deck">
        <!-- Un card para cada comentario -->

        <div  v-for="comment in comments"
              class="card score mb-3" >
          <div class="card-header">{{ comment.stars }}</div>
          <div class="card-body text-success">
              <h5 class="card-title">{{ comment.username }}</h5>
              <p class="card-text">{{ comment.text }}</p>
          </div>
        </div>


      </div> <!-- cierra card-deck de comentarios -->


</div><!-- cierra id="vue-course-comments" -->
{/literal}
