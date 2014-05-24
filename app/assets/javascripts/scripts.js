var ready;
ready = function() {

  $('.bxslider').bxSlider();

};

$(document).ready(ready);
$(document).on('page:load', ready);