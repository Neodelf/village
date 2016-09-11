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

$(document).ready(function(){
  $('#map1 > area')
    .mouseover(function() {
      var stead_serial_number = $(this).attr('id').substring(1),
          info = $('.stead_' + stead_serial_number).html();
      $('.stead-info').html(info);
    })
});
