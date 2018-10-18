<%@ page language="C#" autoeventwireup="true" inherits="admin_resume1_update, App_Web_ierhkg5z" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <title></title>
</head>
<style type="text/css">
    .resume1 {
        width:635px;
        height:560px;
        margin:50px auto;
    }
    .resume1-icom, .bottom {
        width:635px;
        height:40px;
        margin:0px auto;
        margin-bottom:30px;
        text-align:center;
        font-size:24px;
    }
    .resume1-item {
        height:37px;
        width:300px;
        border:1px #ccc solid;
        margin-top:5px;
        border-radius:4px;
        padding:4px;
        float:left;
        margin-left:5px

    }
    .resume1-item p{
        line-height: 0px;
        margin-right:15px;
        margin-left:10px;
        float:left;
        color: #9a0a3b;
        font-size:18px

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
    .plus {
        color:#ccc
    }
    .trash:hover {
        color: #0094ff; 
    }
       
    .list:hover {
        color: #0094ff;
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
     .img {
        width: 611px;
        height: 144px;
        
        margin: 5px auto;
        border-radius: 6px
    }

    .itemAdd-img-left {
        width:155px;
        height:105px;
        margin:0 auto;
        border: 1px #ccc solid;
    }
    .itemAdd-img-left img{
        width:65px;
        height:105px;
    }
    .itemAdd-img-right {
        width:340px;
        height:30px;
        margin:8px auto;
        
    }
    .img-upload {
       border: 1px #ccc solid;
       border-radius: 4px;
       color: #ccc;
    }
</style>
<body>
<form id="form1" runat="server">
<div>
    <div class="resume1">
        <div class="resume1-icom">
            基本信息修改
        </div>
         <div class="name resume1-item">
           <p>姓名:</p>
           <asp:TextBox ID="name"   runat="server" CssClass="TextBoxname"/>
       </div>

        

        <div class="job resume1-item">
           <p>职位:</p>
           <asp:TextBox ID="job"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="website resume1-item">
           <p>网站:</p>
          <asp:TextBox ID="website"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="school resume1-item">
           <p>学校:</p>
           <asp:TextBox ID="school"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="education resume1-item">
           <p>学历:</p>
           <asp:TextBox ID="education"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="major resume1-item">
           <p>专业:</p>
           <asp:TextBox ID="major"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="native resume1-item">
           <p>籍贯:</p>
           <asp:TextBox ID="native"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="birthday resume1-item">
           <p>生日:</p>
          <asp:TextBox ID="birthday"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="hobby resume1-item">
           <p>爱好:</p>
           <asp:TextBox ID="hobby"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="mobile  resume1-item">
           <p>号码:</p>
          <asp:TextBox ID="mobile"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="email resume1-item">
           <p>邮箱:</p>
          <asp:TextBox ID="email"  runat="server" CssClass="TextBoxname"/>
       </div>

        <div class="dizhi resume1-item">
           <p>地址:</p>
          <asp:TextBox ID="dizhi"  runat="server" CssClass="TextBoxname"/>
       </div>

         <div class="githup resume1-item">
           <p>Git:</p>
          <asp:TextBox ID="githup"  runat="server" CssClass="TextBoxname"/>
       </div>
        <div class="img resume1-item">
           <p>照片:</p>
           <div class="itemAdd-img">
                    <div class="itemAdd-img-left">
                        <asp:ImageMap runat="server" ID="ImageMap" CssClass="ImageMap-img"></asp:ImageMap>
                    </div>
                    <div class="itemAdd-img-right">
                        <asp:FileUpload ID="imgUpload" CssClass="img-upload" runat="server"  Text="确认提交"/>
                        <span>
                            <asp:Button ID="Button2" runat="server" Text="预览" OnClick="preview_Click" CssClass="Button2" />
                        </span>
                    </div>
       </div>
      
    </div>
     
 </div>
    <div class="bottom">
       <asp:Button ID="Button1"  runat="server" Text="确认提交" OnClick="tj_Click" CssClass="Button"/>
    </div> 
</form>
</body>
</html>
