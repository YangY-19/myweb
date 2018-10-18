<%@ page language="C#" autoeventwireup="true" inherits="admin_resume2, App_Web_ierhkg5z" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <title></title>
</head>
<style type="text/css">
    a {
        text-decoration: none;
        color: #082275;
    }

    .resume2 {
        width: 635px;
        margin: 50px auto;
    }

    .resume2-icom {
        width: 635px;
        height: 40px;
        margin: 0px auto;
        margin-bottom: 30px
    }

    .resume2-item {
        height: 37px;
        width: 300px;
        border: 1px #ccc solid;
        margin-top: 5px;
        border-radius: 4px;
        padding: 4px;
        float: left;
        margin-left: 5px
    }

    .resume2-item p {
        line-height: 0px;
        margin-right: 15px;
        margin-left: 10px;
        float: left;
        color: #9a0a3b;
        font-size: 18px
    }

    .RepeaterLi {
        float: left;
        line-height: 36px;
        list-style: none;
        font-size: 18px
    }

    .plus,
    .list,
    .trash {
        float: left;
        width: 60px;
        line-height: 40px;
        margin-left: 110px;
        color: #082275;
    }

    .plus a,
    .trash a {
        color: #ccc
    }

    .trash:hover a {
        color: #0094ff;
    }

    .list:hover a {
        color: #0094ff;
    }

    .resume2-item2 {
        width: 620px;
        height: 200px;
        border: 1px #ccc solid;
        margin-top: 20px;
        border-radius: 4px;
        padding: 4px;
        margin: 40px auto
    }

    .resume2-item2 p {
        text-align: center;
        color: #9a0a3b;
        font-size: 18px;
        line-height: 1px;
    }

    .resume2-item2 .RepeaterLi {
        font-size: 18px;
        padding: 0 10px
    }

    .top200 {
        margin-top: 200px
    }

    .list a {
        font-size: 18px
    }
</style>

<body>
    <div class="resume2">
        <asp:Repeater runat="server" ID="JL2">
            <ItemTemplate>
                <div class="resume2-icom">
                    <div class="plus"><a><i class="fa fa-plus"></i> 添加</a></div>
                    <div class="list"><a href="resume2_update.aspx?id=<%#Eval(" id") %>" target="rightFrame"><i class="fa fa-pencil-square-o"></i>
                            修改</a></div>
                    <div class="trash"><a href="#"><i class="fa fa-trash-o"></i> 删除</a></div>
                </div>
                <div class="pingmian  resume2-item">
                    <p>平面:</p>
                    <span class="RepeaterLi">
                        <%#Eval("pingmian")%></span>
                </div>

                <div class="wangzhan resume2-item">
                    <p>建站:</p>
                    <span class="RepeaterLi">
                        <%#Eval("wangzhan")%></span>
                </div>

                <div class="bangong  resume2-item">
                    <p>办公:</p>
                    <span class="RepeaterLi">
                        <%#Eval("bangong")%></span>
                </div>
                 <div class="chuangyi  resume2-item">
                    <p>办公:</p>
                    <span class="RepeaterLi">
                        <%#Eval("chuangyi")%></span>
                </div>

                <div class="qita resume2-item">
                    <p>其他:</p>
                    <span class="RepeaterLi">
                        <%#Eval("qita")%></span>
                </div>

                <div class="synopsis top200  resume2-item2">
                    <p>简介</p>
                    <span class="RepeaterLi">
                        <%#DB.getLeftSubString(Eval("synopsis").ToString(),250 )%></span>
                </div>

                <div class="experience  resume2-item2">
                    <p>经验</p>
                    <span class="RepeaterLi">
                        <%#DB.getLeftSubString(Eval("experience").ToString(),65 )%></span>
                </div>

                <div class="education  resume2-item2">
                    <p>教育</p>
                    <span class="RepeaterLi">
                        <%#DB.getLeftSubString(Eval("education").ToString(),65 )%></span>
                </div>



            </ItemTemplate>
        </asp:Repeater>


    </div>
</body>

</html>