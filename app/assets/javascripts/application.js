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
//= require wow.min.js
//= require_tree .


$(document).ready(function() {

  new WOW().init();

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

    $('#about').velocity({
      opacity: [1, 0],
      scale: [1, 0.95]
    }, {
      duration: 300,
      easing: [0.37, 0.36, 0.13, 1]
    });

  });

  $('.about-btn').mouseenter(function() {
    $(this).css('cursor', 'pointer');
  });

  $('.close-btn').click(function() {

    $('#about').velocity({
      opacity: [0, 1],
      scale: [0.98, 1]
    }, {
      duration: 200,
      easing: [0.37, 0.36, 0.13, 1],
      complete: function () {
        $('#about').removeClass('show');
      }
    });

  });

  var $moods = $('.mood');
  // hour height
  var h_height = 200;

  $('body.moods-index, body.moods-latest').css('height', h_height * 24);

  $moods.each(function(index, mood) {
    var h = $(mood).attr('data-hour');
    var m = $(mood).attr('data-min');
    var pos = (h * h_height) + (m / 60) * h_height + Math.random() * 25;
    $(mood).css({
      'top': pos,
      // 'opacity': Math.random() + 0.4
    });
    // $(mood).attr('data-stellar-ratio', Math.random() + 1);
  });


  // mood hover
  $('body').on('mouseenter', '.mood', function () {

    $('.mood').not(this).addClass('hidden');
    // $(this).css('transform', 'scale(1.1)');

  });


  $('body').on('mouseleave', '.mood', function () {

    $('.mood').not(this).removeClass('hidden');
    // $(this).css('transform', 'scale(1)');

  });


  // generate hour lines
  var $height = $(document).height();

  for (var i = h_height; i < $height; i += h_height) {
    var $hour = $('<div class="hour" style="top:' + i + 'px;">');
    $hour.html("<strong>" + i / h_height + ":00</strong>");
    var $hr = $('<hr class="line">');
    $hour.append($hr);
    $('body').append($hour);
  }

  function autoScroll() {
      window.scrollBy(0, scrollSpeed);
  }

  // if page is moods-index then autoscroll
  // inspired by this: http://codepen.io/yvalentin/pen/raoMGQ/

  if (($("body").hasClass("moods-index")) || ($("body").hasClass("moods-latest"))) {
    var scrollSpeed = 1;
    var scrollDelay = 10;

    var scrollInterval = setInterval(autoScroll, scrollDelay);
  }

  // back to top button

  $(window).scroll(function(){
		if ($(this).scrollTop() > 400) {
			$('.scroll-top').addClass('visible');
		} else {
			$('.scroll-top').removeClass('visible');
		}
	});

	// Click event to scroll to top
	$('.scroll-top').click(function(){
    $('html, body').velocity("scroll", { duration: 1500, easing: [0.44, 0.45, 0.42,1] });
	});

  // About close button hover
  $('.close-btn').mouseenter(function () {
    $(this).velocity({
      rotateZ: [ 0, 90 ]
    },{
      delay: 0,
      duration: 250,
      easing: [0.37, 0.36, 0.13, 1]
    });

    $(this).css('cursor', 'pointer');
  });

  $('.close-btn').mouseleave(function () {
    $(this).velocity({
      rotateZ: [ 90, 0 ]
    },{
      delay: 0,
      duration: 250,
      easing: [0.37, 0.36, 0.13, 1]
    });
  });

});
