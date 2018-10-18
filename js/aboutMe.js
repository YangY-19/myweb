$(document).ready(function () {
  var winHeight = $(window).height();
  $('.header').siblings().show();
  $('html,body').animate({ scrollTop: winHeight }, 300);
  $('.introduce-nav > ul li').on('click', function () {
    $('.header').siblings().show();
    $('html,body').animate({ scrollTop: winHeight }, 300);
  })

    
  $('.awardsing li').hover(function () {
    $('.awardsing-box').show();
    var index = $(this).index();
    $('.awardsing-box li').eq(index).show().siblings().hide();
  }, function () {
    $('.awardsing-box').hide();
  });

  var experienceing = $('.experienceing').html().length;
  var awarding = $('.awardsing').html().length;
  var educationing = $('.educationing').html().length;
  if (experienceing == '') {
    $('.education-box').hide()
  }
  if (awarding == '') {
    $('.award-box').hide()
  }
  if (educationing == '') {
    $('.educationing-box').hide()
  }
})
