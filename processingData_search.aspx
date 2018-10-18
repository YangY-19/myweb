<%@ page language="C#" autoeventwireup="true" inherits="processingData, App_Web_nfei3cqz" %>
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
  <link rel="stylesheet" href="./css/home.css">
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
  <!-- <link rel="stylesheet" href="./images/carousel_01.png"> -->
  <title>YangY网站</title>
</head>
    <style>
    .introduce-content{
        height:1100px;margin-left:-200px
    }
     .pager {
        margin-left:569px
    }
  @media screen and (max-width:960px) {
    .introduce-content{
            margin-left: -652px;
    }
            .search-input {
    width: 258px;
    height: 26px;
    border: 1px solid #bfbfbf;
    border-radius: 20px;
    margin: 0 auto;
    padding: 2px 12px;
}
.processingData-introduce article {
    width: 350px;
    height: 245px;
    float:none; 
    padding: 20px;
    margin: 10px;
    box-sizing: border-box;
    border: 1px solid #c6daf7;
    border-radius: 8px;
    background: #f9fbff;
}
.processingData-introduce {
    width: 1000px;
    height: 800px;
    margin: 0 auto;
    margin-left: 307px;
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
    .pager {
        margin-left:400px;
        margin-top:400px
    }
        .processingData-introduce2 {
            height:1000px
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
    <div class="body" style="height:1300px">
      <div class="wire"></div>
      <!-- 导航 -->
      <div class="body-top" style="height: 959px;width: 1082px;">
        <div class="aboutMe-logo-nav">
          <uc2:nav ID="nav1" runat="server" />
        <!-- Web话题内容 -->
        <div class="introduce">
          <div class="introduce-content">
            <!-- 标题 -->
            <div class="introduceContent-title-box">
              <div class="introduceContent-title">
                <div class="choose-name">资料整理</div>
                <div class="choose-underline"></div>
                <div class="choose-explain">欢迎来到我的网站,感谢对我的支持</div>
              </div>
               
            </div>
            <!-- 搜索框 -->

         
            <!-- 内容 -->
            <div class="processingData-introduce processingData-introduce2">
              <div class="wu" style="text-align:center; color:#f00; display:none"><i class="fa fa-frown-o fa-lg"></i> 无匹配内容</div>
              <asp:Repeater runat="server" ID="sWT">
                  <ItemTemplate>
                      <article>
                        <a href="./particulars2.aspx?id= <%#Eval("id") %>">
                          <div class="processingData-title"><%#Eval("title").ToString().Replace(kw,"<font color='red'>"+kw+"</font>") %></div>
                          <div class="processingData-time">
                            <i>
                              <img src="./images/time2.png" alt="">
                            </i>
                           <span style="margin-left:4px"><%#Eval("cleardate") %></span> 
                          </div>
                          <div class="processingData-content"><%#DB.getLeftSubString(Eval("content").ToString().Replace(kw,"<font color='red'>"+kw+"</font>"),300 )%></div>
                        </a>
                      </article>
                  </ItemTemplate>
              </asp:Repeater>
              
              
            </div>
            <div class="page" style="margin-left:90px;margin-top:10px ">
              <a href="#">
                <img src="./images/page.png" alt="">
              </a>
            </div>
              <div style="font-size:10px; width:100%; text-align:center" class="pager">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="true" PageSize="4" OnPageChanged="AspNetPager1_PageChanged"
                    FirstPageText="首页" LastPageText="尾页" NextPageText=">" PrevPageText="<">
                </webdiyer:AspNetPager>
            </div>
          </div>
        </div>
      </div>
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
      var $content_length = $('.processingData-content').length;
      if ($content_length < 1) {
          $(".wu").show()
      } else {
          $(".wu").hide()
      }
  </script>
    </form>
</body>

</html>