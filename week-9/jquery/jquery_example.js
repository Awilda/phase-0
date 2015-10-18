// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  bodyElement = $('body')


//RELEASE 4: Event Listener
  // Add the code for the event listener here

  $('#welcome').css({"color": "blue", "border": "black solid 2px", "opacity": ".5"});
  $('.mascot h1:first-child').html("Bobolinks");



//RELEASE 5: Experiment on your own
 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://2.bp.blogspot.com/-i821nva8G8U/TcS4w3jrGXI/AAAAAAAAEPg/thcfch1H0bo/s1600/Bobolink_3712.jpg')
 
 $('img').mouseleave(function(){
 	$(this).attr('src', 'devbootcamp-logo-new.png')
 $('img').fadeTo('fast', 0.5);
  })
  });




})  // end of the document.ready function: do not remove or write DOM manipulation below this.
