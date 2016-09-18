// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap.min
//= require smoothscroll
//= require jquery.backstretch.min
//= require wow.min
//= require custom
//= require mapper
//= require magnific
//= require jquery.magnific-popup.min
//= require yandex_map

$(document).ready(function(){
  $('#map1 > area').mouseover(function() {
    var stead_serial_number = $(this).attr('id').substring(1),
      info = $('.stead_' + stead_serial_number).html();
    $('.stead-info').html(info);
  });

  $('#main').backstretch([
      "#{image_url('bg_1.jpg')}",
      "#{image_url('bg_2.jpg')}"
    ],  {duration: 2000, fade: 750}
  );
  var toggle_button = $('.toggle_button');
  toggle_button.text('Развернуть все');
  toggle_buildings();

  toggle_button.on('click', function(){
    toggle_buildings();
    toggle_button_text();
  })
});

function toggle_button_text(){
  var button = $('.toggle_button');
  if (button.text() == 'Развернуть все'){
    button.text('Свернуть');
  } else if (button.text() == 'Свернуть'){
    button.text('Развернуть все');
  }
}
function toggle_buildings(){
  $('.toggle_part').each(function(){
    $(this).toggle(400);
  });
}