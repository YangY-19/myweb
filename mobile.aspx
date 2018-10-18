<%@ page language="C#" autoeventwireup="true" inherits="mobile, App_Web_nfei3cqz" %>

<%@ Register src="comm/nav.ascx" tagname="nav" tagprefix="uc1" %>
<%@ Register src="comm/menu.ascx" tagname="menu" tagprefix="uc2" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="./css/swiper-3.4.2.min.css">
  <link rel="stylesheet" href="./css/animate.min.css">
  <link rel="stylesheet" href="./css/global.css">
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/aboutMe.css">
  <!-- <link rel="stylesheet" href="./images/carousel_01.png"> -->
  <title>YangY网站</title>
</head>
    <style>
        .iframe {
               width:500px; height:700px
        }
        @media screen and (max-width:960px) {
            .iframe {
                   width: 390px;
    height: 545px;
        }
            .moblie1 {
       margin-left:-31px
            }
            .moblie{
                
            }
        }
    </style>
<body>
    <form id="form2" runat="server">
  <div class="mian">
    <!-- ----头部header---- -->
    <div class="header">
      <div class="head-prologue">
        <p>Welcome to my website Please visit</p>
        <div class="readmore">
          <a href="#">
            <p>READ MORE</p>
          </a>
        </div>
        <!-- <div class="readmore-arrow">
          <img src="./images/headArrow.png" alt="">
        </div> -->
      </div>
      <!-- Swiper -->

        <uc2:menu ID="menu1" runat="server" />

    </div>
       <div class="body">
      <div class="wire"></div>
      <!-- 导航 -->
      <div class="body-top">
        <uc1:nav ID="nav1" runat="server" />
       <div class="aboutMe-introduce moblie1">
          <div class="introduce-content ">
            <div class="introduceContent-title-box">
              <div class="introduceContent-title">
                <div class="choose-name">手机网</div>
                <div class="choose-underline"></div>
                <div class="choose-explain">欢迎来到我的网站,感谢对我的支持</div>
              </div>
            </div>
            <div class="mobile" style="width:400px; margin:0 auto ">            
                 <Iframe src="https://m.ithome.com/phonem/" width="500" height="700" scrolling="yes" frameborder="0" class="iframe"></iframe>
            </div>
            <div class="page">
              <a href="#">
                <img src="./images/page.png" alt="">
              </a>
            </div>
          </div>
        </div>
        <div class="hotweb-bg">
          <img src="./images/hotweb-bg.png" alt="">
        </div>
      </div>
 <script src="./js/jquery.js"></script>
  <script src="./js/swiper-3.4.2.min.js"></script>
  <script src="./js/index1.js"></script>
  <script src="./js/aboutMe.js"></script>
  <!-- Swiper JS -->
  <script>
      var swiper = new Swiper('.swiper-container', {
          pagination: '.swiper-pagination',
          paginationClickable: '.swiper-pagination',
          nextButton: '.swiper-button-next',
          prevButton: '.swiper-button-prev',
          spaceBetween: 30,
          effect: 'fade',
          paginationClickable: true,
          loop: true,
          autoplay: 3000,
          autoplayDisableOnInteraction: false
      });
      $(".introduce-nav-ul .li4").css({ color: "#beb494" });
  </script>
    </form>
</body>
</html>