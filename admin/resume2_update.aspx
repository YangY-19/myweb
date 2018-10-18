<%@ page language="C#" autoeventwireup="true" inherits="admin_resume2_update, App_Web_ierhkg5z" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<title></title>
</head>
<style type="text/css">
    a {
        text-decoration:none; 
        color:#082275;
    }
    .resume2 {
        width:635px;
        margin:50px auto;
    }
    .resume2-icom, .bottom {
        width:635px;
        height:40px;
        margin:0px auto;
        margin-bottom:30px
    }
  .bottom {
        width:105px;
        height:40px;
        margin:170px auto;
        margin-bottom:30px
    }
    .resume2-item {
        height:37px;
        width:300px;
        border:1px #ccc solid;
        margin-top:5px;
        border-radius:4px;
        padding:4px;
        float:left;
        margin-left:5px

    }
    .resume2-item p{
      line-height: 0px;
      margin-right:15px;
      margin-left:10px;
      float:left;
      color: #9a0a3b;
      font-size:18px;
    }
    .RepeaterLi {
     float:left;
     line-height: 36px;
     list-style: none;
     font-size:18px
    }
    .plus, .list, .trash {
     float:left;
     width: 60px;
     line-height: 40px;
     margin-left: 110px;
     color: #082275;
    }
    .plus a, .trash a {
      color:#ccc
    }
    .trash:hover a{
      color: #0094ff;
    }

    .list:hover a {
        color: #0094ff;
    }
    .resume2-item2 {
        width:620px;
        height:140px;
        border:1px #ccc solid;
        margin-top:20px;
        border-radius:4px;
        padding:4px;
        margin: 0 auto
    }
    .resume2-item2 p {
        text-align:center;
        color: #9a0a3b;
        font-size:18px;
        line-height:1px;
    }
    .resume2-item2 .RepeaterLi {
        font-size:18px;
        padding: 0 10px 
    }
    .top200 {
        margin-top:200px
    }
    .TextBoxname {
        height: 39px;
        width: 234px;
        border: none;
        outline: medium;
        font-size:18px;
    }

    .Button {
        width:100px;
        height:30px;
        background:#0094ff;
        color:#fff;
        line-height:30px;
        border-radius:6px;
        text-align:center;
        border:none;
        margin-top: 30px;
    }
    .TextBoxname2 {
           height: 90px;
         width: 616px;
        outline: medium;
        font-size:18px;
        border:none;
        font-family:'Microsoft YaHei'
    }
    .resume2-top {
        height:130px;
    }
    .resume2-bottom {
        height:560px;
    }
</style>
<body>
    <form id="form1" runat="server">
  <div class="resume2">
        <div class="resume2-top">

            <div class="pingmian  resume2-item">
           <p>平面:</p>
           <asp:TextBox ID="pingmian" runat="server" CssClass="TextBoxname" ></asp:TextBox>
       </div>

      <div class="wangzhan resume2-item">
           <p>建站:</p>
           <asp:TextBox ID="wangzhan"  runat="server" CssClass="TextBoxname"></asp:TextBox>
       </div>

        <div class="bangong  resume2-item">
           <p>办公:</p>
          <asp:TextBox ID="bangong" runat="server" CssClass="TextBoxname"/>
       </div>
            <div class="chuangyi  resume2-item">
           <p>创意:</p>
          <asp:TextBox ID="chuangyi" runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="qita resume2-item">
           <p>其他:</p>
           <asp:TextBox ID="qita" runat="server" CssClass="TextBoxname"/>
       </div>

        </div>

         <div class="resume2-bottom">
         <div class="synopsis  resume2-item2">
           <p>简介</p>
             <asp:TextBox ID="synopsis" runat="server"  TextMode="MultiLine" CssClass="TextBoxname2" ></asp:TextBox>
       </div>

      <div class="experience  resume2-item2">
           <p>经验</p>
          <asp:TextBox ID="experience" runat="server"  TextMode="MultiLine" CssClass="TextBoxname2" ></asp:TextBox>
       </div>

        <div class="education  resume2-item2">
           <p>教育</p>
           <asp:TextBox ID="tbContent" runat="server" TextMode="MultiLine" class="ckeditor"></asp:TextBox>
       </div>

  
             
    </div>
    <div class="bottom">
       <asp:Button ID="Button1"  runat="server" Text="确认提交" OnClick="tj_Click" CssClass="Button"/>
    </div>   
</form>
</body>
</html>
