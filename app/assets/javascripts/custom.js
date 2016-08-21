// PRELOADER JS
$(window).load(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets
});


// jQuery to collapse the navbar on scroll //
$(window).scroll(function() {
    var navbar = $(".navbar");
    if (navbar.length > 0 && navbar.offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
});


$(function(){

  wow = new WOW(
  {
    mobile: false
  });
  wow.init();

  $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
    });

  var iso_box_section = $('.iso-box-section a');
  if (iso_box_section.length > 0) {
    iso_box_section.nivoLightbox({
      effect: 'fadeScale'
    });
  }

});

