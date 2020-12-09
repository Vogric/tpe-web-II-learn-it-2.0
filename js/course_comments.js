"use strict"

let app = new Vue({
    el: '#vue-course-comments',
    data: {
        //wip_message: null,
        course_id: 0,
        is_logged: false,
        user_id: null,
        username: null,
        is_admin: false,
        comments: [],
        average: 0
    },
    methods: {
        deleteComment: e => null  // para evitar el Warning y asignar después
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

    let form_course_comment;

    getComments();

    getSessionInfo();      

    
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
                return null;
            })           
            .catch(error => console.log("Fetch error:",error))
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
                app.is_admin = parseInt(info.is_admin);
                // console.log(app);
                // app.wip_message+= " " + JSON.stringify(app._data);
                return app.is_logged;
            })
            .then(is_logged => {
                if(is_logged) {
                    form_course_comment = document.querySelector("#course-comment-form");
                    form_course_comment.addEventListener("submit",submitNewComment);                    
                }
                else {
                    // Para seguridad
                    form_course_comment=null;
                }
            })
            .catch(error => console.log("Fetch error:",error))
    }

    function submitNewComment(e) {

        e.preventDefault();
        const post_comment = {
            text: document.querySelector("#new-text").value,
            score: document.querySelector("#new-score").value,
            id_course: app.course_id,
            id_user: app.user_id
        };

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

                return null;
            })
            .then(_not_used => form_course_comment.reset() )                
            .catch(error => console.log("Fetch error:",error));
        
    }

    app.deleteComment=function (event)
    {
        const id_to_delete=event.target.dataset.id;        
        console.log("deleteComment ", id_to_delete);

        fetch(COMMENTS_ENDPOINT + `/${id_to_delete}`, { method: 'DELETE' })
            .then(response => {
                console.log("DELETE response:", response);
                if( response.ok ) {
                    let pos_to_delete=-1;
                    for(let pos=0; pos<app.comments.length; pos++)
                        if( app.comments[pos].id == id_to_delete) {
                            pos_to_delete = pos;
                            break;
                        }
                    app.comments.splice(pos_to_delete, 1);

                    console.log(`Deleted comment id ${id_to_delete} and from array pos ${pos_to_delete}`);
                }
                else {
                    response.json().then(json => 
                        console.log(`API Error: ${json}`));
                }
            })
            .catch(error => console.log("Fetch error:",error));

    }

});