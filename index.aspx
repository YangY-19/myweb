<%@ page language="C#" autoeventwireup="true" inherits="index, App_Web_zr5fnkrr" %>

<%@ Register src="comm/menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="comm/nav.ascx" tagname="nav" tagprefix="uc2" %>

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
   
  <!-- <link rel="stylesheet" href="./images/carousel_01.png"> -->
  <title>YangY个人网站</title>
     <link rel="icon" href="./images/logo.gif">
</head>

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
        <div class="readmore-arrow readmoreAnimation">
          <img class="headArrow" src="./images/headArrow.png">
        </div>
      </div>
      <!-- Swiper -->
        <uc1:menu ID="menu1" runat="server" />
    </div>
    <!-- ----主体body----- -->
    <div class="body">
      <div class="wire"></div>
      <!-- 导航 -->
      <div class="body-top">
        <uc2:nav ID="nav1" runat="server" />
        <!-- 内容 -->
          
        <div class="introduce">
          <div class="introduce-content">
            <div class="introduceContent-title-box">
              <div class="introduceContent-title">
                <div class="choose-name">HOME</div>
                <div class="choose-underline"></div>
                <div class="choose-explain">欢迎来到我的网站,请观看我的作品,感谢对我的支持</div>
              </div>
            </div>
            <div class="introduceContent-classify">
            <!-- 1 作者介绍-->
              <li class="classify auther">
                <a href="./aboutMe.aspx">
                  <div class="classify-icon">
                    <img src="./images/auther.png" alt="">
                  </div>
                  <div class="classify-title">作者介绍</div>
                  <div class="classify-content">
                    刘东阳,读于苏州信息职业技术学院,地址苏州市吴江区松陵镇鲈乡南路1237号
                  </div>
                </a>
              </li>
              <!-- 2Web话题 -->
              <li class="classify information">
                <a href="./webTopic.aspx">
                  <div class="classify-icon">
                    <img src="./images/topics.png" alt="">
                  </div>
                  <div class="classify-title">Web话题</div>
                  <div class="classify-content">
                    每天更新关于web前端相关的文章,请及时来阅读文章.获得知识吧
                  </div>
                </a>
              </li>
              <!-- 3资料整理 -->
              <li class="classify mobile">
                <a href="./processingData.aspx">
                  <div class="classify-icon">
                    <img src="./images/information.png" alt="">
                  </div>
                  <div class="classify-title">资料整理</div>
                  <div class="classify-content">
                    对关于web前端经常用到的知识进行收集整理,方便日后阅读及使用
                  </div>
                </a>
              </li>
            </div>
          </div>
          <div class="pageDown-box">
            <div class="pageDown">
              <a href="#">
                <p>PAGE DOWN</p>
              </a>
            </div>
          </div>
        </div>
      </div>
      <!-- 热门网站 -->
      <div class="body-bottom">
        <div class="hotWeb">
          <div class="hotWeb-title">
            <div class="hotWeb-name">HOTWEBSITE</div>
            <div class="hotWeb-underline"></div>
          </div>
          <div class="hotWeb-content">
            <asp:Repeater runat="server" ID="HW">
                <ItemTemplate>
                    <div class="hotWeb-item">
                      <a href="<%#Eval("url") %>" target="_blank">
                        <img src="<%#Eval("img")%>" alt="">
                      </a>
                    &nbsp;</div>
                </ItemTemplate>
            </asp:Repeater>
          </div>
        </div>
        <div class="hotweb-bg">
          <img src="./images/hotweb-bg.png" alt="">
        </div>
      </div>
    </div>
    <!-- ----底部footer---- -->
    <div class="footer">
      <div class="contact">
        <div class="contact-title">
          <div class="contact-name">CONTACT</div>
          <div class="contact-underline"></div>
        </div>

        <div class="contact-content">
          <div class="send-content">
            <div class="send-name-phone">
              <div class="send-name">
                <p>姓名</p>
                <asp:TextBox runat="server" ID="name"></asp:TextBox>
              </div>
              <div class="send-phone">
                <p>电话</p>
                <asp:TextBox runat="server" ID="phone"></asp:TextBox>
              </div>
            </div>
            <div class="send-message">
              <p>信息</p>
                <asp:TextBox   ID="message"   runat="server" TextMode="MultiLine" CssClass="message"></asp:TextBox>   
              <div class="send">
                  <asp:Button ID="tj" runat="server" Text="发送" CssClass="send-button" OnClick="tj_Click"></asp:Button>
              </div>
            </div>
          </div>
        </div>

        <div class="jiaru">
          <div class="qq-weixin">
            <div class="qq">
              <img src="./images/QQ.png" alt="">
            </div>
            <div class="weixin">
              <img src="./images/weixin.png" alt="">
            </div>
          </div>
          <div class="QRcode">
            <img class="qqQRcode" src="./images/QQewm.png" alt="">
            <img class="wxQRcode" src="./images/weixinewm.png" alt="">
          </div>
        </div>
      </div>
      <div class="copyright">
        <p>来自www.yangy.vip      </div>
    </div>
  </div>
  <script src="./js/jquery.js"></script>
  <script src="./js/swiper-3.4.2.min.js"></script>
  <script src="./js/index1.js"></script>
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
      $(".introduce-nav-ul .li1").css({ color: "#beb494" });
  </script>
    </form>
</body>

</html>