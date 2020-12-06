"use strict"

let app = new Vue({
    el: '#vue-course-comments',
    data: {
        wip_message: null,
        course_id: 0,
        is_logged: false,
        user_id: 2, // TODO Consultar via API
        username: "Fre*", // TODO Consultar via API
        is_admin: true, // TODO Consultar via API
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

    const COURSE_COMMENTS_ENDPOINT = `api/course/${app.course_id}/comments`;
    const COMMENTS_ENDPOINT = 'api/comments';


    getComments();

    getSessionInfo();

    
    document.querySelector("#course-comment-form").addEventListener("submit",
        function (e) {
            e.preventDefault();
            const post_comment = {
                text: document.querySelector("#new-text").value,
                score: document.querySelector("#new-score").value,
                id_course: app.course_id,
                id_user: app.user_id
            }

            console.log("#course-comment-form->submit");
            console.log("post_comment =", post_comment);

            fetch(COMMENTS_ENDPOINT, {
                method: 'POST',
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify(post_comment)
            })
                .then(response => response.json())
                .then(function (json) {
                    // Agrego lo que posteé al id y el username
                    // para armar un comment como los que se obtienen
                    // de la API
                    let new_comment = {
                        id: json.last_insert_id,
                        username: app.username,
                        ...post_comment
                    };
                    // Y recalculo las estrellas
                    addStarsToComment(new_comment);

                    app.comments.push(new_comment);
                    app.average =
                        (app.average * (app.comments.length - 1) + parseInt(new_comment.score)) /
                        app.comments.length;
                })
                .catch(error => console.log(error));
        });


    function getComments() {
        fetch(COURSE_COMMENTS_ENDPOINT)
            .then(response => response.json())
            .then(function (comments) {
                // Agrega stars según score a cada comentario 'c'
                app.comments = comments.map(addStarsToComment);

                let score_sum = 0;
                for (const c of comments) {
                    score_sum += parseInt(c.score);
                }
                app.average = score_sum / comments.length;
            })
            .catch(error => console.log(error))
    }


    function addStarsToComment(c){
        c.stars = "⭐".repeat(c.score)
        return c 
    }

    function getSessionInfo() {
        fetch('api/session')
            .then(response => response.json())
            .then(function (info) {
                app.is_logged = info.is_logged;                
                app.user_id = info.user_id;
                app.username = info.username;
                app.is_admin = info.is_admin;
                app.wip_message+= " " + JSON.stringify(info);
                        
            })
            .catch(error => console.log(error))
    }




});