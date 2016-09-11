$(window).load(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets
});

$(window).scroll(function() {
    var navbar = $(".navbar");
    if (navbar.length > 0 && navbar.offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
});

$(function(){
  wow = new WOW({
    mobile: false
  });
  wow.init();

  $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
  });
});
