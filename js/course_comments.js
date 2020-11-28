let new_node=document.createElement("p");

new_node.innerHTML="CSR WIP - INSERTED FROM JS";

let div_course_comments = document.querySelector("#vue-course-comments");
let first_child = div_course_comments.firstChild;

div_course_comments.insertBefore(new_node, first_child);
