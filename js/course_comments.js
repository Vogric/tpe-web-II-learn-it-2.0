"use strict"

let app = new Vue({
    el: '#vue-course-comments',
    data: {
        wip_message: null,
        course_id: 0,
        comments: [],
        average: 0
    }
});

document.addEventListener('DOMContentLoaded', () => {
    app.wip_message = "CSR WIP - INSERTED FROM VUE";

    // Tomo el id directamente de la URL del curso que estoy visualizando 
    // en el browser. eg: http://learnit.local/courses/2
    // El último elemento es el id
    app.course_id = window.location.href.split('/').pop();

    let ENDPOINT = `api/course/${app.course_id}/comments`;

    getComments();


    function getComments() {
        fetch(ENDPOINT)
            .then(response => response.json())
            .then(function(comments) {
                   // agrega stars según score a cada comentario 'c'
                app.comments = comments.map(c => { c.stars = "⭐".repeat(c.score); return c });

                let score_sum=0;
                for (const c of comments) {
                    score_sum += parseInt(c.score);
                }
                app.average = score_sum / comments.length;
            })            
            .catch(error => console.log(error))
    }



});