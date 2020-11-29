"use strict"

let app = new Vue({
    el: '#vue-course-comments',
    data: {
        comments: [],
        wip_message: null
    }
});

document.addEventListener('DOMContentLoaded', () => {
    app.wip_message="CSR WIP - INSERTED FROM VUE";

    getComments();

});


function getComments() {
    // TODO fetch de API los comments
    let mocked_comments = [
        {
          username: "Good",
          text: "Vue mocked 101: Lorem ipsum dolor sit amet, consectetur inim veniam, quis nostrud exercitation.",
          score: 5
        },
        {
            username: "Not bad",
            text: "Vue mocked 102: Lorem ipsum dolor sit amet, consectetur adipiscing elit,liqua. Ut enim ad minim veniam, quis nostrud exercitation",
            score: 3
        },
        {
          username: "Bad course",
          text: "Vue mocked 103: Lorem ipsum dolor sit amet, consectetur adipiscing elit,liqua. Ut enim ad minim veniam, quis nostrud exercitatio.",
          score: 1
        }
    ];

    // agrega stars según score
    app.comments = mocked_comments.map(c => { c.stars="⭐".repeat(c.score); return c });

    
}