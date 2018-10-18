<%@ page language="C#" autoeventwireup="true" inherits="webTopic, App_Web_2umeuqi2" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
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
  <link rel="stylesheet" href="./css/aboutMe.css">
<link rel="stylesheet" href="./css/home.css">
  <title>YangY网站</title>
</head>
<style>
     .pager {
            margin-left: 337px
    }
    @media screen and (max-width:960px) {
        .webTopic-introduce {
    width: 356px;
    margin: 0 auto;
}
        .excerpt-img {
    float: left;
    margin-left: -235px;
    width: 50px;
    height:30px;
    background:#00ff90
}
        .excerpt {
    border: 1px solid #eaeaea;
    padding: 10px;
    overflow: hidden;
    background-color: #ffffff;
    margin-bottom: 12px;
    border-radius: 8px;
        margin-left: -24px;

}
        .excerpt-title .cat {
    color: #fff;
    background-color: #45BCF9;
    padding: -4px 3px;
    font-size: 4px;
    height: 14px;
    display: inline-block;
    position: relative;
    top: -2px;
    line-height: 16px;
    margin-right: 2px;
}
        .excerpt h2 {
    display: inline;
    font-size: 12px;
    line-height: 1px;
}
        .note {
    font-size: 2px;
    color: #999;
    word-wrap: break-word;
    line-height: 12px;
    margin-bottom: 0;
}
        .meta {
            color: #999;
            font-size: 12px;
            /* margin-bottom: 10px; */
        }
.excerpt-title {
    /* margin-bottom: 10px; */
    margin-top: 0px;
}
        .excerpt-img {
            float: left;
            margin-left: -227px;
            width: -19px;
            margin-top: 56px;
            width: -9px;
            height: 94px;
            background: #00ff90;
            display: none;
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

        .wobTopic {
            width:382px
        }
        .pager {
            margin-left:69px
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
        <uc1:menu ID="menu1" runat="server" />
  
    </div>
    <!-- ----主体body----- -->
    <div class="body" style="height:1540px">
      <div class="wire"></div>
      <!-- 导航 -->
      <div class="body-top">
       <uc2:nav ID="nav1" runat="server" />
       
        <!-- Web话题内容 -->
          
        <div class="introduce wobTopic">
          <div class="introduce-content">
            <!-- 标题 -->
            <div class="introduceContent-title-box">
              <div class="introduceContent-title">
                <div class="choose-name">Web话题</div>
                <div class="choose-underline"></div>
                <div class="choose-explain">欢迎来到我的网站,感谢对我的支持</div>
              </div>
            </div>
            <!-- 搜索框 -->
            
            <div class="search-box">
                <asp:TextBox class="search-input" placeholder="查找内容" runat="server" ID="keyword"></asp:TextBox>
              <asp:Button runat="server" ID="bt" type="submit" class="search-button" OnClick="bt_Click"/>
            </div>
            <!-- 内容 -->
            <div class="webTopic-introduce">
              <asp:Repeater runat="server" ID="WT">
                  <ItemTemplate>
                      <article class="excerpt">
                        <a class="excerpt-img" href="./particulars.aspx?id=<%#Eval("id") %>">
                          <img src="<%#Eval("img") %>" alt="">
                        </a>
                        &nbsp;&nbsp;&nbsp;<header class="excerpt-title" style="text-align:left">
                          <a class="cat" href="#"><%#Eval("type") %> <i></i></a>
                          <h2>
                            <a href="./particulars.aspx?id=<%#Eval("id") %>">
                            <%#Eval("title") %>
                         </h2>
                        </header>
                        <time class="meta">
                          <time>
                          <i>
                            <img src="./images/time2.png" alt="">
                          </i>
                          <%#Eval("webdate") %></time><h5 class="note"><%#DB.getLeftSubString(Eval("content").ToString(),250 )%></h5>
                      </article>
                  </ItemTemplate>
              </asp:Repeater>
              
            </div>
            <div class="page" style="margin-top: 0">
              <a href="#">
                <img src="./images/page.png" alt="">
              </a>
                
          </div>
              <div style="font-size:10px; width:100%; text-align:center;" class="pager">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="true" PageSize="4" OnPageChanged="AspNetPager1_PageChanged"
                    FirstPageText="首页" LastPageText="尾页" NextPageText=">" PrevPageText="<">
                </webdiyer:AspNetPager>
            </div>
        </div>
      </div>
    </div>
    <div class="hotweb-bg" style="margin-top: 621px">
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
  </script>
    </form>
</body>
</html>
