﻿<%@ page language="C#" autoeventwireup="true" inherits="productions, App_Web_zr5fnkrr" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<%@ Register src="comm/nav.ascx" tagname="nav" tagprefix="uc1" %>

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
  <link rel="stylesheet" href="./css/home.css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
  <title>YangY网站</title>
</head>
<style>
     @media screen and (max-width:960px){
                .pager {
    margin: 10px;
    line-height: 20px;
    display: block;
    margin-left: 47px;
    margin-top: 20px;
}
        .search-input {
    width: 258px;
    height: 26px;
    border: 1px solid #bfbfbf;
    border-radius: 20px;
    margin: 0 auto;
    padding: 2px 12px;
}

.search-box {
    width: 262px;
    height: 48px;
    margin: 0 auto;
    position: relative;
}
.search-button img {
    width: 20px;
    height: 20px;
}

.search-button {
    width: 30px;
    height: 30px;
    border: none;
    background: none;
    position: absolute;
    top: 4px;
    right: -11px;
}
.search-button {
    width: 30px;
    height: 30px;
    border: none;
    background: none;
    position: absolute;
    top: 4px;
    right: -11px;
}
.productions-introduce .item {
    border: 1px solid #354aa1;
    padding: 20px 20px 20px 20px;
    overflow: hidden;
    background-color: #ffffff;
    border-radius: 8px;
    width: 247px;
    height: 100px;
    float: none;
    margin: 10px 10px;
}
        .prod {
            width: 296px;
        }
        .hotweb-bg {
    height: 200px;
    margin-top: 174px;
}
    }
</style>
<body>
    <form id="form1" runat="server">
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
        <uc1:nav ID="nav1" runat="server" />

    </div>
    <!-- ----主体body----- -->
    <div class="body" style="height:800px">
      <div class="wire"></div>
      <!-- 导航 -->
      <div class="body-top">
        
          <uc1:nav ID="nav2" runat="server" />
        <!-- Web话题内容 -->
          
        <div class="introduce">
          <div class="introduce-content prod" style="height:800px">
            <!-- 标题 -->
            <div class="introduceContent-title-box" >
              <div class="introduceContent-title">
                <div class="choose-name">作品集</div>
                <div class="choose-underline"></div>
                <div class="choose-explain">欢迎来到我的网站,感谢对我的支持</div>
              </div>
            </div>
            <!-- 搜索框 -->


            <!-- 内容 -->
            <div class="productions-introduce">
                <div class="wu" style="text-align:center; color:#f00; display:none"><i class="fa fa-frown-o fa-lg"></i> 无匹配内容</div>
              <!-- 1 -->
              <asp:Repeater runat="server" ID="sWT">
                  <ItemTemplate>
                      <li class="item">
                        <a href="<%#Eval("url") %>">
                            <div class="excerpt-title">
                              <%#Eval("title").ToString().Replace(kw,"<font color='red'>"+kw+"</font>") %>  
                            </div>    
                            <div class="excerpt-message">
                              <%#Eval("content").ToString().Replace(kw,"<font color='red'>"+kw+"</font>") %>  
                            </div>
                        </a>
                      </li>
                  </ItemTemplate>
              </asp:Repeater>
            </div>
            <div class="page" style="margin-top: 0">
              <a href="#">
                <img src="./images/page.png" alt="">
              </a>
            </div>
               <div style="font-size:10px; width:100%; text-align:center  ;    margin-left: 376px;;" class="pager">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="true" PageSize="6" OnPageChanged="AspNetPager1_PageChanged"
                    FirstPageText="首页" LastPageText="尾页" NextPageText=">" PrevPageText="<">
                </webdiyer:AspNetPager>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="hotweb-bg">
      <img src="./images/hotweb-bg.png" alt="">
    </div>
  </div>
  <script src="./js/jquery.js"></script>
  <script src="http://jq22.qiniudn.com/masonry-docs.min.js"></script>
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
      $(".introduce-nav-ul .li3").css({ color: "#beb494" });
      var $content_length = $('.excerpt-title').length;
      if ($content_length < 1) {
          $(".wu").show()
      } else {
          $(".wu").hide()
      }
  </script>
    </form>
</body>

</html>