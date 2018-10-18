<%@ page language="C#" autoeventwireup="true" inherits="image, App_Web_zr5fnkrr" %>

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
  <link rel="stylesheet" href="./css/home.css">
  <title>详情页</title>
</head>
    <style>
        @media screen and (max-width:960px) {
             .hotweb-bg {
    height: 101px;
}
             .particulars-main {
    background: #fff;
    /* min-height: 100px; */
    height: 100%;
}
             .hotweb-bg img {
    height: 100px;
    width: 700px;
    position: absolute;
    bottom: 0;
}
             .page {
    width: 30px;
    height: 30px;
    /* margin-top: 40px; */
    /* margin-bottom: 20px; */
    position: absolute;
    top: 340px;
    /* margin-left: 20px; */
}
}
    </style>
<body>
    <form id="form1" runat="server">
  <div class="wire"></div>
  <!-- 导航 -->
  <div class="particulars-main">
    <!-- Web话题内容 -->
      <uc1:nav ID="nav1" runat="server" />
    <div class="particulars-content">
        <asp:Repeater runat="server" ID="wt">
                  <ItemTemplate>
                      <img src="<%#Eval("img") %>">
                  </ItemTemplate>
            </asp:Repeater>
      
      <div class="page">
        <a href="#">
          <img src="./images/page.png" alt="">
        </a>
      </div>
    </div>
    <div class="hotweb-bg">
      <img src="./images/hotweb-bg.png" alt="">
    </div>
  </div>

  <script src="./js/jquery.js"></script>
  <script src="./js/index1.js"></script>
    </form>
</body>

</html>
