<%@ page language="C#" autoeventwireup="true" inherits="admin_message, App_Web_ierhkg5z" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
         a {
        text-decoration: none;
        color: #082275;
    }
        .message {
            margin-top:50px
        }
    .item {
        width: 700px;
        height: 140px;
        border: 1px #ccc solid;
        border-radius: 8px;
        margin: 20px auto;
    }

    .item-left {
        width: 130px;
        height: 140px;
        float: left;
        padding:4px;
    }
        .item-name {
            text-align:center;
            line-height: 84px;
    color: #06458c;
    font-size: 19px;
        }
        .item-mobile {
            text-align:center;
             color: #06458c;
        }
        .item-middle {
            width: 460px;
        height: 140px;
        float: left;
        padding: 26px;
        text-indent:2em;
    box-sizing: border-box;
     border-left: 1px #ccc solid;
     border-right: 1px #ccc solid;
        }
        .item-right {
            width: 70px;
        height: 130px;
        float: left;
        padding:4px;
        box-sizing:border-box;
        }
        .item-del {
            width:70px;
            height:40px;    
            margin: 58px 16px


        }
            .pager {
        margin: 10px;
        line-height: 20px;
        display: block;
        margin-left: 506px;
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
    <div class="message">
        <asp:Repeater runat="server" ID="WT">
                <ItemTemplate>

                    <div class="item">
                        <div class="item-left">
                            <div class="item-name">
                                <%#Eval("messageName")%>
                            </div>
                            <div class="item-mobile ">
                                 <%#Eval("mobile")%>
                            </div>
                        </div>
                        <div class="item-middle">
                            <div class="item-title">
                                 <%#DB.getLeftSubString(Eval("content").ToString(),300 )%>
                            </div>
                        </div>
                        <div class="item-right">
                            <div class="item-del">
                                <div class="trash"><a href="message_del.aspx?id=<%#Eval(" id") %>"><i class="fa fa-trash-o"></i> 删除</a></div>
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
