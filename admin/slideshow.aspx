<%@ page language="C#" autoeventwireup="true" inherits="admin_slideshow, App_Web_muj15vsv" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <title></title>
    <style>
            .webtopic {
        height: 543px;
    }

    a {
        text-decoration: none;
        color: #082275;
    }

    .webtopic-icom {
        width: 70px;
        height: 30px;
        margin: 30px auto;
    }

    .plus {
        width: 70px;
    }

    .plus a {
        font-size: 18px;
    }

    .plus:hover a {
        color: #0094ff;
    }

    .trash:hover a {
        color: #f00;
    }

    .list:hover a {
        color: #0094ff;
    }
.slideshow {
            width: 585px;
        height: 400px;
        border: 1px #ccc solid;
        border-radius: 8px;
        margin: 30px auto;
        
        }
.item-box {
            width: 270px;
        height: 100px;
        border: 1px #ccc solid;
        border-radius: 8px;
        margin: 10px 10px;
        float:left
        }
    .item {
        width: 190px;
        height: 100px;
        border-right: 1px #ccc solid;
        float:left;
    }
        .item img{
        width: 186px;
        height: 94px;
        float:left;
        border-radius:4px 0 0 4px;
        margin:2px
    }
        .item-del {
            width: 70px;
        height: 100px;
        float:left;
        }

 

    .trash {
           margin-top: 42px;
    margin-left: 13px;
        width: 70px;
    }

    .pager {
        margin: 10px;
        line-height: 20px;
        display: block;
        margin-left: 440px;
        margin-top: 20px
    }

    .pager span {
        border: 1px solid #CCCCCC;
        margin: 0 5px;
        padding: 1px 6px;
        float: left;
    }

    .pager a {
        border: 1px solid #CCCCCC;
        display: block;
        overflow: hidden;
        float: left;
        margin: 0 5px;
        padding: 1px 6px;
    }

    .fa-plus,
    .fa-trash-o {
        font-size: 20px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="webtopic-icom">
                <div class="plus"><a href="slideshow_add.aspx"><i class="fa  fa-plus"></i> 添加</a></div>
            </div>
       <div class="slideshow">
           
           <asp:Repeater runat="server" ID="WT">
                <ItemTemplate>
                    <div class="item-box">
                        <div class="item">
                        <img src="<%#Eval("img") %>"/>
                    </div>
                    <div class="item-del">
                        <div class="trash"><a href="slideshow_del.aspx?id=<%#Eval(" id") %>"><i class="fa fa-trash-o"></i>
                                删除</a></div>
                    </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
       </div>
       <div style="font-size:10px; width:100%; text-align:center" class="pager">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="true" PageSize="6" OnPageChanged="AspNetPager1_PageChanged"
                    FirstPageText="首页" LastPageText="尾页" NextPageText=">" PrevPageText="<">
                </webdiyer:AspNetPager>

            </div>
    </div>
    </form>
</body>
</html>
