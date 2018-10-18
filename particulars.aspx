<%@ page language="C#" autoeventwireup="true" inherits="particulars, App_Web_nfei3cqz" %>

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

<body>
      <form id="form1" runat="server">
      <div class="wire"></div>
      <!-- 导航 -->
      <div class="particulars-main" >
        <div class="aboutMe-logo-nav">
        <!-- Web话题内容 -->
            <uc1:nav ID="nav1" runat="server" />
       <asp:Repeater runat="server" ID="XQ">
           <ItemTemplate>
                <div class="particulars-content">
           <div class="particularsContent-title"><%#Eval("title") %></div>
          <div class="particularsContent-author"><%#Eval("type") %></div>
          <div class="particularsContent-time"><%#Eval("webdate") %></div>
           <div class="particularsContent-content"><%#Eval("content") %></div>
           <div class="page">
             <a href="#">
              <img src="./images/page.png" alt="">
            </a>
           &nbsp;</div>
        </div>
           </ItemTemplate>
       </asp:Repeater>
        <div class="hotweb-bg">
          <img src="./images/hotweb-bg.png" alt="">
        </div>
    </div>
    
  <script src="./js/jquery.js"></script>
  <script src="./js/index1.js"></script>
      </form>
</body>

</html>
