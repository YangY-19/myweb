<%@ page language="C#" autoeventwireup="true" inherits="admin_main, App_Web_muj15vsv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

</head>
<form id="form1" runat="server">
    <frameset rows="140,*,36" frameborder="no" framepading="0">
        <frame src="top.aspx" frameborder="no" name="topFrame" scrolling="no" noresize="noresize"></frame>
        <frameset cols="260,*" frameborder="no" framepading="0">
            <frame src="left.aspx" frameborder="no" name="leftFrame" scrolling="no" noresize="noresize"></frame>
            <frame src="right.aspx" frameborder="no" name="rightFrame" scrolling="yes" noresize="noresize" scrolling="no">


            </frame>
        </frameset>
        <frame src="bottom.aspx" frameborder="no" name="topFrame" scrolling="no" noresize="noresize"></frame>
    </frameset>
</form>
</body>

</html>