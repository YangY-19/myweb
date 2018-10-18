<%@ page language="C#" autoeventwireup="true" inherits="admin_honor_add, App_Web_muj15vsv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<style>
    .itemAdd {
        width: 500px;
        height: 220px;
        margin: 30px auto;
    }

    .itemAdd-title {
        width: 500px;
        height: 40px;
        border: 1px #ccc solid;
        border-radius: 6px
    }

    .itemAdd-title p,
    .itemAdd-date p,
    .itemAdd-type p {
        float: left;
        line-height: 6px;
        font-size: 18px;
        margin-left: 5px
    }

    .itemAdd-title .TextBoxtitle {
        float: left;
        width: 430px;
        margin-left: 20px;
        height: 34px;
        outline: medium;
        border: none;
    }



  


    .TextBoxname2 {
        height: 90px;
        width: 616px;
        outline: medium;
        font-size: 18px;
        border: none;
        font-family: 'Microsoft YaHei'
    }



    .itemAdd-img {
        width: 400px;
        height: 130px;
        
        margin: 40px auto;
        border-radius: 6px
    }

    .itemAdd-img-left {
        width:155px;
        height:105px;
        margin:0 auto;
        border: 1px #ccc solid;
    }
    .itemAdd-img-left img{
        width:155px;
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

    .bottom {
        width: 105px;
        height: 30px;
        margin: 0px auto;
        margin-top: 68px
    }

    .Button {
        width: 100px;
        height: 30px;
        background: #0094ff;
        color: #fff;
        line-height: 30px;
        border-radius: 6px;
        text-align: center;
        border: 1px #ccc solid;
    }
    .Button2 {
    width: 65px;
    height: 26px;
    color: #fff;
    line-height: 25px;
    background: #e2e2e2;
    border: 1px #ccc solid;
    border-radius: 4px;
    text-align: center;
    margin-left: 10px;
    }
</style>

<body>
    <form id="form1" runat="server">
        <div class="webtopic">
            <div class="itemAdd">
                <div class="itemAdd-title">
                    <p>奖项:</p>
                    <asp:TextBox ID="title" runat="server" CssClass="TextBoxtitle " />
                </div>
                <div class="date-type">
                </div>
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
            <div class="bottom">
                <asp:Button ID="Button1" runat="server" Text="确认提交" OnClick="tj_Click" CssClass="Button" />
            </div>
        </div>
    </form>
</body>

</html>
