// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 1:

document.getElementById("release-0").className = 'done';


// Release 2:

document.getElementById("release-1").style.display = "none";


// Release 3:

var header_1 = document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 5:

var release_4 = document.getElementsByClassName("release-4")

for (i = 0; i < release_4.length; i++) {
  release_4[i].style.fontSize = "2em";
}

// Release 6:

var hidden_template = document.getElementById("hidden");
document.body.appendChild(hidden_template.content.cloneNode(true));

// Reflection:
/*
What did you learn about the DOM?
A lot! It's very useful to add, edit, or update elements of an HTML file as everything in a "document" can be an object.
What are some useful methods to use to manipulate the DOM?
All of the document.get methods, such as "getElementsById".
*/