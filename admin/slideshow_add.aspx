<%@ page language="C#" autoeventwireup="true" inherits="admin_slideshow_update, App_Web_ierhkg5z" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .itemAdd-img-left {
            width:190px;
            height:100px;
            margin:80px auto;
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
        .itemAdd-img-left {
            width:380px;
            height:200px;
            border: 1px #ccc solid;
            margin:0 auto
        }
        .ImageMap-img {
            width:380px;
            height:200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
        <div class="bottom">
                <asp:Button ID="Button1" runat="server" Text="确认提交" OnClick="tj_Click" CssClass="Button" />
            </div>
    </div>
    </form>
</body>
</html>
