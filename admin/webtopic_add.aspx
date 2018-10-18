<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="admin_webtopic_add, App_Web_muj15vsv" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<style>
    .itemAdd {
        width: 500px;
        height: 460px;
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



    .date-type {
        width: 500px;
        height: 30px;
        margin-top: 20px
    }

    .itemAdd-date {
        width: 230px;
        height: 40px;
        float: left;
        border: 1px #ccc solid;
        border-radius: 6px
    }

    .itemAdd-type {
        width: 230px;
        height: 40px;
        float: left;
        margin-left: 30px;
        border: 1px #ccc solid;
        border-radius: 6px
    }

    .TextBoxdate,
    .TextBoxtype {
        float: left;
        margin-left: 20px;
        height: 35px;
        width: 160px;
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

    .itemAdd-content {
        width: 600px;
        height: 400px;
        float: left;
        border: 1px #ccc solid;
        margin: 0auto;
        border-radius: 6px
    }

    .itemAdd-img {
        width: 400px;
        height: 130px;
        
        margin: 40px auto;
        border-radius: 6px
    }

    .itemAdd-content p {
        line-height: 0px;
        font-size: 18px;
        text-align: center
    }

    .TextBoxcontent {
        height: 160px;
        width: 480px;
        outline: medium;
        border: none;
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
        width: 1px;
        height: 30px;
        margin: 0px auto;
        margin-top: 120px;
        margin-bottom:30px;
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
                    <p>标题:</p>
                    <asp:TextBox ID="title" runat="server" CssClass="TextBoxtitle " />
                </div>
                <div class="date-type">
                    <div class="itemAdd-date">
                        <p>日期:</p>
                        <asp:TextBox ID="webdate" runat="server" CssClass="TextBoxdate" />
                    </div>
                    <div class="itemAdd-type">
                        <p>分类:</p>
                        <asp:TextBox ID="webtype" runat="server" CssClass="TextBoxtype" />
                    </div>
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

                <div class="itemAdd-content">
                    <p>内容:</p>
                    <asp:TextBox ID="tbContent" runat="server" TextMode="MultiLine" class="ckeditor"></asp:TextBox>
                </div>
            </div>
            <div class="bottom">
                <asp:Button ID="Button1" runat="server" Text="确认提交" OnClick="tj_Click" CssClass="Button" />
            </div>
        </div>
    </form>
</body>

</html>