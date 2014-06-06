var ready;
ready = function() {
  $('.bxslider').bxSlider();
}; 
  $(".clickable").click(function() {
    $(".email").toggle();
});

$(document).ready(ready);
$(document).on('page:load', ready);

// $(document).ready(function() {
// $("email-button").click(function() {
//     $("email").toggle();
//   });
// });


