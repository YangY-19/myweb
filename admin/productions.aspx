<%@ page language="C#" autoeventwireup="true" inherits="admin_Default, App_Web_ierhkg5z" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <title></title>
</head>
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

    .item {
        width: 610px;
        height: 100px;
        border: 1px #ccc solid;
        border-radius: 8px;
        margin: 10px auto;
    }

    .item-left {
        width: 130px;
        height: 100px;
        float: left;
        padding:4px;
    }

    .item-left img {
        width: 130px;
        height: 92px;
        border-radius:4px 0 0 4px 
    }

    .item-middle {
        width: 490px;
        height: 100px;
        float: left;
        border-left: 1px #ccc solid;
        border-right: 1px #ccc solid;
        padding: 0 10px
    }

    .item-title {
        line-height: 31px;
        font-size: 18px;
    }

    .item-content {
        font-size: 14px;
        line-height: 22px;
    }

    .item-right {
        width: 60px;
        height: 100px;
        float: left;
    }

    .list {
        margin-top: 20px;
        margin-left: 20px;
        width: 70px;
    }

    .trash {
        margin-top: 20px;
        margin-left: 20px;
        width: 70px;
    }

    .pager {
        margin: 10px;
        line-height: 20px;
        display: block;
        margin-left: 420px;
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
        .item-url, .item-content {
            margin-top:8px
        }
</style>
<body>
    <form id="form1" runat="server">
    <div>
       <div class="clear">
            <div class="webtopic-icom">
                <div class="plus"><a href="productions_add.aspx"><i class="fa  fa-plus"></i> 添加</a></div>
            </div>
            <asp:Repeater runat="server" ID="WT">
                <ItemTemplate>

                    <div class="item">
                        <div class="item-middle">
                            <div class="item-title">
                                <%#DB.getLeftSubString(Eval("title").ToString(),30 )%>
                            </div>

                            <div class="item-url">
                                <a href="<%#Eval("url") %>" target="_blank"><%#DB.getLeftSubString(Eval("url").ToString(),100 )%></a>            
                            </div>

                            <div class="item-content">
                                <%#DB.getLeftSubString(Eval("content").ToString(),100 )%>
                            </div>
                            
                        </div>
                        <div class="item-right">
                            <div class="item-update">
                                <div class="list"><a href="productions_update.aspx?id=<%#Eval("id") %>" target="rightFrame"><i class="fa fa-pencil-square-o"></i> 修改</a></div>
                            </div>
                            <div class="item-del">
                                <div class="trash"><a href="productions_del.aspx?id=<%#Eval("id") %>"><i class="fa fa-trash-o"></i> 删除</a></div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div style="font-size:10px; width:100%; text-align:center" class="pager">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="true" PageSize="4" OnPageChanged="AspNetPager1_PageChanged"
                    FirstPageText="首页" LastPageText="尾页" NextPageText=">" PrevPageText="<">
                </webdiyer:AspNetPager>

            </div>
        </div>
    </div>
    </form>
</body>
</html>
