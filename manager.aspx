<%@ page language="C#" autoeventwireup="true" inherits="manager, App_Web_nfei3cqz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <title></title>
</head>
    <style>
        body {
            margin:0;
            padding:0;
        }

       .bg {
            width:100%;
            height:780px;
            background-image: url('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1538982454426&di=060f35914546f5bf05f126201bc5e953&imgtype=0&src=http%3A%2F%2Fpic3.16pic.com%2F00%2F07%2F65%2F16pic_765494_b.jpg');
            background-repeat:no-repeat;
            background-size:cover;
            padding-top:150px

            }
        .manager-box {
            width:350px;
            height:400px;
            border: 2px solid rgba(86, 149, 253, 0.69);
            background:rgba(9, 76, 127, 0.85);
            border-radius:10px;
            margin:0 auto;
            padding-top: 30px;
            
        }
        .manager-box>p {
            text-align:center;
            font-family:YouYuan;
            color:#fff;
            font-size:28px;
        }
        .name, .password {
            width:310px;
            margin: 60px auto;
            position:relative;
        }
        .name>p, .password>p { 
                color: rgba(255, 255, 255, 0.85);
                font-size: 24px;
                position: absolute;
                left: 10px;
                top: -14px;
                font-family:YouYuan;
        }
        .TextBoxname, .TextBoxpassword {
           width:308px;
           height:46px;
           border:2px solid rgba(61, 130, 245, 0.81);
           border-radius:12px;
           background:none;
           color:#fff;
           font-size:18px;
           padding-left:10px;
           box-sizing:border-box;

        }
        .login {
            width:310px;
            height:40px;
           margin: -20px auto;
           outline: medium
        }
        .ButtonLogin {
            background:#20cce0;
            width:308px;
           height:44px;
           border-radius:12px;
           border:2px solid #20cce0;
            color:#fff;
            font-size:24px;
            outline: medium;
            
        }
    </style>
<body>
        <div class="bg">
            <form id="form1" runat="server">
                 <div class="manager-box">
                     <p>管理员登录</p>
                     <div class="name">
                         <p><i class="fa fa-user-o"></i> 用户名</p>
                         <asp:TextBox runat="server" CssClass="TextBoxname" ID="xm" ></asp:TextBox>
                     </div>
                     <div class="password">
                         <p><i class="fa fa-lock"></i> 密 码</p>
                         <asp:TextBox runat="server" CssClass="TextBoxpassword" ID="password"></asp:TextBox>
                     </div>
                     <div class="login">
                         <asp:Button runat="server" ID="tj" Text="登录" CssClass="ButtonLogin" OnClick="tj_Click"/>
                     </div>
                 </div>
            </form>
        </div>

</body>

    <script>
        $(".TextBoxpassword, .TextBoxname").focus(function () {
            $(this).css({ outline: "medium" , background: "none"});
            $(this).css({ background: "none" });
            $(this).prev().hide();
        })

    </script>
</html>
