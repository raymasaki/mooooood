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
//= require velocity.min.js
//= require velocity.ui.min.js
//= require_tree .


$(document).ready(function() {

  $('body').velocity({
    opacity: [1, 0],
    // scale: [1, 0.9]
  }, {
    duration: 800,
    delay: 250,
    easing: [0.37, 0.36, 0.13, 1]
  });

  // Clicking on the ? link
  $('.about-btn').click(function() {
    $('#about').addClass('show');
  });

  $('.close-btn').click(function() {
    $('#about').removeClass('show');
  });

  var $moods = $('.mood');

  $moods.each(function(index, mood) {
    var h = $(mood).attr('data-hour');
    var m = $(mood).attr('data-min');
    var pos = (h * 400) + (m / 60) * 400 + Math.random() * 25;
    $(mood).css({
      'top': pos,
      // 'opacity': Math.random() + 0.4
    });
    // $(mood).attr('data-stellar-ratio', Math.random() + 1);
  });

  var $height = $(document).height();

  for (var i = 400; i < $height; i += 400) {
    var $hour = $('<div class="hour" style="top:' + i + 'px;">');
    $hour.text((i / 400) + ":00");
    var $hr = $('<hr class="line">');
    $hour.append($hr);
    $('body').append($hour);
  }

});
