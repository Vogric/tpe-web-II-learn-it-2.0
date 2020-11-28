{literal}
<div id="vue-course-comments">

      
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
        <div class="card score border-success mb-3" >
          <div class="card-header">⭐⭐⭐⭐⭐</div>
          <div class="card-body text-success">
              <h5 class="card-title">Good</h5>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur inim veniam, quis nostrud exercitation.</p>
          </div>
        </div>

        <div class="card score border-warning mb-3" >
              <div class="card-header">⭐⭐⭐</div>
              <div class="card-body text-warning">
                <h5 class="card-title">Not bad</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit,liqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
              </div>
        </div>  

        <div class="card score border-danger mb-3" >
          <div class="card-header">⭐</div>
          <div class="card-body text-danger">
            <h5 class="card-title">Bad course</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit,liqua. Ut enim ad minim veniam, quis nostrud exercitatio.</p>
          </div>
        </div>

      </div> <!-- cierra card-deck de comentarios -->


</div><!-- cierra id="vue-course-comments" -->
{/literal}
