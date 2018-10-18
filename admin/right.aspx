<%@ page language="C#" autoeventwireup="true" inherits="admin_right, App_Web_ierhkg5z" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<style>
    body {
        margin: 0;
        padding: 0;
    }

    .bg {
        width: 100%;
        height: 597px;
        background-image: url('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1538982454426&di=060f35914546f5bf05f126201bc5e953&imgtype=0&src=http%3A%2F%2Fpic3.16pic.com%2F00%2F07%2F65%2F16pic_765494_b.jpg');
        background-repeat: no-repeat;
        background-size: cover;

    }

    .left {
        float: left;
        width: 98%;
        height: 597px;
        background: #f2f2f2
    }

    .right {
        float: left;
        width: 2%;

    }

    .calendar {
        width: 488px;
        height: 355px;
        margin: 100px auto;
        border-radius: 10px;
    }

    .calendar a {
        text-decoration: none;
        color: #082275;
    }
</style>

<body>
    <form id="form2" runat="server">
        <div>
            <div class="left ">
                <div class="calendar">
                    <asp:calendar runat="server" id="Calendar1" CellPadding="2" Width="488px" TitleStyle-BackColor="#034884 "
                        BorderColor="#000" DayHeaderStyle-BackColor="#024b91" Day-BackColor="#000000"
                        　　OtherMonthDayStyle-ForeColor="#cccccc" 　　DayNameFormat="Full" 　TitleStyle-ForeColor="#ffffff"
                        　　NextPrevStyle-ForeColor="#ffffff" 　　CellSpacing="1" 　　WeekendDayStyle-BackColor="#eeeeee"
                        　　DayHeaderStyle-ForeColor="#ffffff" 　　SelectionMode="None" 　　TodayDayStyle-BorderColor="#5e715e"
                        　　TodayDayStyle-BorderWidth="1" 　　TodayDayStyle-Font-Bold="true" 　　TodayDayStyle-ForeColor="#5e715e"
                        Height="386px" OnSelectionChanged="Calendar1_SelectionChanged1"></asp:calendar>
                </div>
            </div>
            <div class="right bg"></div>
        </div>
    </form>
</body>
</body>

</html>