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
//= require_tree .

$(document).ready(function () {


  // Clicking on the ? link
  $('.about-btn').click(function () {
    $('#about').addClass('show');
  });

  $('.close-btn').click(function () {
    $('#about').removeClass('show');
  });

  var $moods = $('.mood');

  $moods.each( function (index, mood) {
    var h = $(mood).attr('data-hour');
    var m = $(mood).attr('data-min');
    var pos = (h * 400) + (m / 60) * 400 + Math.random() * 200;
    $(mood).css('top', pos);
    // $(mood).attr('data-stellar-ratio', Math.random() + 0.5);
  });

  var $height = $(document).height();

  for (var i = 0; i < $height; i += 400) {
    var $hr = $('<hr class="line" style="top:' + i + 'px;">');
    $('body').append($hr);
  }

  $(window).stellar();

});
