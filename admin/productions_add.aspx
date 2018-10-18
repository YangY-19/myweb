<%@ page language="C#" autoeventwireup="true" inherits="admin_productions_add, App_Web_ierhkg5z" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
        <style>
        .item {
            width: 500px;
            height: 400px;
            margin: 30px auto
        }
        .itemAdd-title {
            width: 500px;
            height: 40px;
            border: 1px #ccc solid;
            border-radius: 6px;
            margin-top:50px;
        }
     .itemAdd-date {
        width: 500px;
        height: 40px;
        border: 1px #ccc solid;
        border-radius: 6px;
        margin-top:50px;
    }
    .itemAdd-content {
        width: 500px;
        height: 205px;
        float: left;
        border: 1px #ccc solid;
        margin: 0auto;
        border-radius: 6px;
        margin-top:50px;
    }
    .itemAdd-title p,
    .itemAdd-date p {
        float: left;
        line-height: 6px;
        font-size: 18px;
        margin-left: 5px
    }
    .itemAdd-title .TextBoxtitle {
        width: 430px;
        margin-left: 20px;
        height: 34px;
        outline: medium;
        border: none;
    }
  .itemAdd-date .TextBoxdate {
        width: 430px;
        margin-left: 20px;
        height: 34px;
        outline: medium;
        border: none;
    }
   .itemAdd-content .TextBoxcontent {
        width: 430px;
        margin-left: 20px;
        height: 34px;
        outline: medium;
        border: none;
    }
    .itemAdd-content p {
        line-height: 6px;
        font-size: 18px;
        margin-left: 5px;
        text-align:center
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
    </style>
<body>
    <form id="form1" runat="server">
    <div class="item">
       <div class="itemAdd-title">
            <p>标题:</p>
            <asp:TextBox ID="title" runat="server" CssClass="TextBoxtitle " />
        </div>

        <div class="itemAdd-date">
            <p>url:</p>
            <asp:TextBox ID="url" runat="server" CssClass="TextBoxdate" />
        </div>

        <div class="itemAdd-content">
            <p>内容</p>
            <asp:TextBox ID="content" runat="server" TextMode="MultiLine" CssClass="TextBoxcontent"></asp:TextBox>
        </div>
    </div>
        <div class="bottom">
                <asp:Button ID="Button1" runat="server" Text="确认提交" OnClick="tj_Click" CssClass="Button" />
            </div>


    </form>
</body>
</html>
