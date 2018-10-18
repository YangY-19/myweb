$(document).ready(function () {
 var winHeight = $(window).height();
  var winWidth = $(window).width();
  $('.header,.body-top, .introduce').height(winHeight)
  $('.header,.body-top,.body-bottom').width(winWidth)

  var PrologueWidth = $('.head-prologue').width() / 2;
  $('.head-prologue').css({ left:winWidth / 2 - PrologueWidth});


  $('.readmore, .readmore-arrow, .pageDown').on('click', function () {
    $('.header').siblings().show();
    $('html,body').animate({ scrollTop: winHeight }, 300);
  })
  $('.pageDown').on('click', function () {
    $('html,body').animate({ scrollTop: winHeight * 2 }, 300);
  })

  $('.qq').on('click', function () {
    $('.qqQRcode').show().siblings().hide();
  })
  $('.weixin').on('click', function () {
    $('.wxQRcode').show().siblings().hide();
  })

  $('.introduce-nav > ul li').on('click', function () {
    $('.header').siblings().show();
    $('html,body').animate({ scrollTop: winHeight }, 300);
  })
 

  $('.readmore, .page, .search-button').hover(function() {
    $('.search-button img').attr("src", './images/search2.png')
    $('.page img').attr("src",'./images/page2.png')
    $('.readmore-arrow').removeClass('readmoreAnimation')
    $('.head-prologue p').css({ color:'#beb494'})
    $('.headArrow').attr("src", './images/headArrow2.png')
    $('.swiper-button-white').hide()
  }, function () {
    $('.search-button img').attr("src", './images/search.png')
    $('.readmore-arrow').addClass('readmoreAnimation')
    $('.page img').attr("src", './images/page.png')
    $('.head-prologue p').css({ color: '#ffffff' })
    $('.headArrow').attr("src", './images/headArrow.png')
    $('.swiper-button-white').show()
  });
  $('.page a').on('click',function() {
    window.history.go(-1);
  })

  $('.search-input').focus(function () {
    $(this).css("border", "1px solid #c6daf7");
    $('.search-button img').attr("src", './images/search2.png')
  })
  $(".search-input").blur(function () {
    $(this).css("border", "1px solid #bfbfbf");
    $('.search-button img').attr("src", './images/search.png')
  });

 

})










$(window).resize(function () { 
  var winHeight = $(window).height();
  var winWidth = $(window).width();
  $('.header,.body-top,.introduce').height(winHeight)
  $('.header,.body-top,.body-bottom').width(winWidth)
  var PrologueWidth = $('.head-prologue').width() / 2;
  $('.head-prologue').css({ left: winWidth / 2 - PrologueWidth })
  $('.homeclick').on('click', function () {
    $('.header').hide();
    
  });
})