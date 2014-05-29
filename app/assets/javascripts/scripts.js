var ready;
ready = function() {

  $('.bxslider').bxSlider();

};


$(document).ready(ready);

$(document).on('page:load', ready);

// $(document).ready(function() {
// $("email-button").click(function() {
//     $("email").toggle();
//   });
// });


$(".clickable").click(function() {
    $(".email").toggle();
 });