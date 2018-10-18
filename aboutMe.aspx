<%@ page language="C#" autoeventwireup="true" inherits="aboutMe, App_Web_zr5fnkrr" %>

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

        <uc2:menu ID="menu1" runat="server" />

    </div>
    <!-- ----主体body----- -->
    <div class="body">
      <div class="wire"></div>
      <!-- 导航 -->
      <div class="body-top">
        <uc1:nav ID="nav1" runat="server" />
       <div class="aboutMe-introduce">
          <div class="introduce-content">
            <div class="introduceContent-title-box">
              <div class="introduceContent-title">
                <div class="choose-name">个人简历</div>
                <div class="choose-underline"></div>
                <div class="choose-explain">欢迎来到我的网站,感谢对我的支持</div>
              </div>
            </div>
            <div class="resume">

              <asp:Repeater runat="server" ID="re1">
                  <ItemTemplate>
                      <div class="resume-left">
                <!-- 姓名  照片 -->
                <div class="resume-name-photo">
                  <div class="resume-photo">
                    <img src="<%#Eval("img") %>" alt="">
                  </div>
                  <div class="resume-name"><%#Eval("myname") %></div>
                  <div class="resume-Position"><%#Eval("job") %></div>
                </div>
                <!-- 基本信息 -->
                <div class="resume-baisc">
                  <div class="big-title">
                    <div class="arrows"></div>
                    <div class="physically">
                      <p>基本信息</p>
                    </div>
                    <div class="tail">
                      <div class="tail-body"></div>
                      <div class="tail-shadow"></div>
                    </div>
                  </div>
                  <div class="resume-baisc-content">
                    <p><span>个人网站：<a href="www.yangy.vip" style="color:#fff" target="_blank"></span><span><%#Eval("website") %></span></a></p>
                    <p><span>毕业学校：</span><span><%#Eval("school") %></span></p>
                    <p><span>学历：</span><span><%#Eval("education") %></span></p>
                    <p><span>专业：</span><span><%#Eval("major") %></span></p>
                    <p><span>籍贯：</span><span><%#Eval("native") %></span></p>
                    <p><span>生日：</span><span><%#Eval("birthday") %></span></p>
                    <p><span>爱好：</span><span><%#Eval("hobby") %></span></p>
                  </div>
                </div>
                <!-- 联系方式 -->
                <div class="contact-baisc">
                  <div class="big-title">
                    <div class="arrows arrows-green"></div>
                    <div class="physically physically-green">
                      <p>联系方式</p>
                    </div>
                    <div class="tail">
                      <div class="tail-body tail-body-green"></div>
                      <div class="tail-shadow tail-shadow-green"></div>
                    </div>
                  </div>
                  <div class="contact-baisc-content">
                    <p><span>手机：</span><span><%#Eval("mobile") %></span></p>
                    <p><span>邮箱：</span><span><%#Eval("email") %></span></p>
                    <p><span>GitHub：<a href="https://github.com/YangY-19" style="color:#fff" target="_blank"><span><%#Eval("githup") %></span></a></span></p>
                    <p><span>地址：</span><span><%#Eval("dizhi") %></span></p>
                  </div>
                </div>
             
                  </ItemTemplate>
              </asp:Repeater>

 <!-- 掌握技能 -->
                <asp:Repeater runat="server" ID="re2">
                  <ItemTemplate>
                     
                <div class="skill-baisc">
                  <div class="big-title">
                    <div class="arrows arrows-yellow"></div>
                    <div class="physically physically-yellow">
                      <p>掌握技能</p>
                    </div>
                    <div class="tail">
                      <div class="tail-body tail-body-yellow"></div>
                      <div class="tail-shadow tail-shadow-yellow"></div>
                    </div>
                  </div>
                  <div class="skill-baisc-content">
                    <p><span>平面设计：</span><span><%#Eval("pingmian") %></span></p>
                    <p><span>网站制作：</span><span><%#Eval("wangzhan") %></span></p>
                    <p><span>办公软件：</span><span><%#Eval("bangong") %></span></p>
                    <p><span>创意思维：</span><span><%#Eval("chuangyi") %></span></p>
                    <p><span>其他：</span><span><%#Eval("qita") %></span></p>
                  </div>
                </div>
              </div>
              <div class="resume-right">
                <div class="resume-right-content">
                  <!-- 个人简介 -->
                  <div class="introduce-box " style="margin-top:-80px">
                    <div class="introduce-title">
                      <div class="introduce-icon">
                        <img src="./images/introduce.png" alt="">
                      </div>
                      <div class="introduce-name">个人简介</div>
                    </div>
                    <div class="introduce-wire"></div>
                    <div class="introduce-neirong introduceing"><%#Eval("synopsis") %></div>
                  </div>
                  <!-- 经历 -->
                  <div class="introduce-box education-box" style="margin-top:50px">
                    <div class="introduce-title">
                      <div class="introduce-icon">
                        <img src="./images/experience.png" alt="">
                      </div>
                      <div class="introduce-name">工作经历</div>
                    </div>
                    <div class="introduce-wire"></div>
                    <div class="introduce-neirong experienceing"><%#Eval("experience") %></div>
                  </div>
                  <!-- 教育 -->
                  <div class="introduce-box educationing-box">
                    <div class="introduce-title">
                      <div class="introduce-icon">
                        <img src="./images/education.png" alt="">
                      </div>
                      <div class="introduce-name">教育/培训经历</div>
                    </div>
                    <div class="introduce-wire"></div>
                    <div class="introduce-neirong educationing"><%#Eval("education") %></div>
                  </div>
                  </ItemTemplate>
              </asp:Repeater>

                <!-- 奖项 -->
               
                      <div class="introduce-box awards-box">
                    <div class="introduce-title">
                      <div class="introduce-icon">
                        <img src="./images/awards.png" alt="">
                      </div>
                      <div class="introduce-name">获得荣誉</div>
                    </div>
                    <div class="introduce-wire"></div>
                  <asp:Repeater runat="server" ID="honor">
                  <ItemTemplate>
                    <div class="introduce-neirong awardsing">
                      <li><a href="image.aspx?id=<%#Eval("id")%>"><%#Eval("item") %></a></li>
                    </div>
                 </ItemTemplate>
              </asp:Repeater>
                  </div>
                </div>
              </div>
            <asp:Repeater runat="server" ID="honor2">
                  <ItemTemplate>
              <div class="awardsing-box">
                <li><a href="image.aspx?id=<%#Eval("id")%>"><img src="<%#Eval("img") %>" ></a></li>
              </div>
             </ItemTemplate>
              </asp:Repeater>    
                
                  
                  
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
      $(".introduce-nav-ul .li2").css({ color: "#beb494" });
  </script>
    </form>
</body>
</html>