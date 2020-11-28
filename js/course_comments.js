"use strict"

let app = new Vue({
    el: '#vue-course-comments',
    data: {
        comments: [],
        wip_message: null
    }
});

document.addEventListener('DOMContentLoaded', () => {

    app.comments = ["mock vue 1","mock vue 2"];
    app.wip_message="CSR WIP - INSERTED FROM VUE";

});