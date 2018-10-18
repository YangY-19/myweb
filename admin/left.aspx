<%@ page language="C#" autoeventwireup="true" inherits="admin_Default, App_Web_muj15vsv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <title></title>
</head>
<style>
    body {
        margin: 0;
        padding: 0;
    }

    .bg {
        width: 100%;
        height: 780px;
        background-image: url('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1538982454426&di=060f35914546f5bf05f126201bc5e953&imgtype=0&src=http%3A%2F%2Fpic3.16pic.com%2F00%2F07%2F65%2F16pic_765494_b.jpg');
        background-repeat: no-repeat;
        background-size: cover;

    }

    .left {
        float: left;
        width: 10%;
    }

    .right {
        float: left;
        width: 90%;
        height: 700px;
        background: #6ca3cb;
        border: 2px solid #6ca3cb;
        box-sizing: border-box
    }

    .resume {}

    .resume-title,
    .home-title,
    .other-title {
        width: 100%;
        height: 40px;
        background: #6ca3cb;
        color: #fff;
        line-height: 40px;
        text-align: left;
        font-size: 18px;
        padding-left: 30px;
        border-bottom: 2px solid #78b2f2;
        cursor: pointer;
    }

    .resume-nav,
    .home-nav,
    .other-nav {
        background: #fff;
        padding: 5px
    }

    .resume-nav li,
    .home-nav li,
    .other-nav li {
        margin-left: 40px;
        list-style: none;
        line-height: 30px;
        text-align: left;

    }

    .fa-chevron-down,
    .fa-chevron-right {
        font-size: 16px
    }

    .fa-chevron-right,
    .fa-circle-o {
        font-size: 16px;
        display: none;
    }

    a {
        text-decoration: none;
        color: #292929;
    }

    a:focus {
        outline-style: none;
        outline-width: 0;
    }
    .fa-check-circle-o {
        color:#ff6a00
    }
</style>

<body>
    <div>
        <div class="left bg"></div>
        <div class="right">
            <div class="resume jt">
                <div class="resume-title title"> <i class="fa fa-chevron-down jiantou"></i> <i class="fa fa-chevron-right"></i></i>
                    简历管理</div>
                <div class="resume-nav">
                    <li><a href="resume1.aspx" target="rightFrame">基本信息</a></li>
                    <li><a href="resume2.aspx" target="rightFrame">简历说明</a></li>
                    <li><a href="honor.aspx" target="rightFrame">获得奖项</a></li>
                </div>
            </div>
            <div class="home jt">
                <div class="home-title title"><i class="fa fa-chevron-down jiantou"></i><i class="fa fa-chevron-right"></i></i>
                    Home</div>
                <div class="home-nav ">
                    <li><a href="webtopic.aspx" target="rightFrame">Web话题</a></li>
                    <li class="ccc"><a href="clear.aspx" target="rightFrame">资料整理</a></li>
                </div>
            </div>
            <div class="other jt">
                <div class="other-title title"><i class="fa fa-chevron-down jiantou"></i><i class="fa fa-chevron-right"></i></i> 其
                    他</div>
                <div class="other-nav">
                    <li><a href="productions.aspx" target="rightFrame">作品管理</a></li>
                    <li><a href="slideshow.aspx" target="rightFrame">轮播图片</a></li>
                    <li class="ccc"><a href="hotwebsite.aspx" target="rightFrame">热门网站</a></li>
                    <li class="ccc"><a  href="message.aspx" target="rightFrame">留言管理</a></li>
                </div>
            </div>
        </div>


    </div>
</body>

<script>
    $(".title").on('click', function () {
        $(this).next().toggle();
        $(this).children().toggle();
    })
    $(".right li").on('click', function () {
        $(".jiantou").addClass("fa-chevron-down")
        $(".fa-chevron-down").css({ color: "#fff" });
        $(this).children().css({ color: "#6ca3cb" }).closest('.right').find("li").children().css({ color: "#000" });
        $(this).children().css({ color: "#6ca3cb" })
        $(this).parent().prev().children(".jiantou").removeClass("fa-chevron-down").addClass("fa-check-circle-o");
        
    })
</script>

</html>