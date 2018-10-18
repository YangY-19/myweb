<%@ page language="C#" autoeventwireup="true" inherits="admin_resume1, App_Web_ierhkg5z" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <title></title>
</head>
<style type="text/css">
    a {
        text-decoration:none; 
        color:#082275;
    }
    .resume1 {
        width:635px;
        margin:50px auto;
    }
    .resume1-icom {
        width:635px;
        height:40px;
        margin:0px auto;
        margin-bottom:30px
    }
    .resume1-item {
        height:37px;
        width:300px;
        border:1px #ccc solid;
        margin-top:5px;
        border-radius:4px;
        padding:4px;
        float:left;
        margin-left:5px

    }
    .resume1-item p{
      line-height: 0px;
      margin-right:15px;
      margin-left:10px;
      float:left;
      color: #9a0a3b;
      font-size:18px

    }
    .RepeaterLi {
     float:left;
     line-height: 36px;
     list-style: none;
     font-size:18px
    }
    .plus, .list, .trash {
     float:left;
     width: 60px;
     line-height: 40px;
     margin-left: 110px;
     color: #082275;
    }
    .plus a, .trash a {
      color:#ccc
    }
        .list a {
            font-size:18px
        }
    .trash:hover a{
      color: #0094ff;
    }

    .list:hover a {
        color: #0094ff;
    }
    .img2 {
      width:26px;
      height:37px;
    }

</style>
<body>
    <div class="resume1">
        
       <asp:Repeater runat="server" ID="JL1">
           <ItemTemplate>
            <div class="resume1-icom">
            <div class="plus"><a><i class="fa fa-plus" ></i> 添加</a></div>
            <div class="list"><a href="resume1_update.aspx?id=<%#Eval("id") %>" target="rightFrame"><i class="fa fa-pencil-square-o" ></i> 修改</a></div>
            <div class="trash"><a href="resume1_del.aspx"><i class="fa fa-trash-o" ></i> 删除</a></div>
        </div>
        <div class="name resume1-item">
           <p>姓名:</p>
           <span class="RepeaterLi"><%#Eval("myname")%></span>
       </div>

      <div class="img resume1-item">
           <p>照片:</p>
            <img class="RepeaterLi img2" src="<%#Eval("img") %>"/>
       </div>

        <div class="job resume1-item">
           <p>职位:</p>
           <span class="RepeaterLi"><%#Eval("job")%></span>
       </div>

        <div class="website resume1-item">
           <p>网站:</p>
          <span class="RepeaterLi"><%#Eval("website")%></span>
       </div>

        <div class="school resume1-item">
           <p>学校:</p>
           <span class="RepeaterLi"><%#Eval("school")%></span>
       </div>

        <div class="education resume1-item">
           <p>学历:</p>
           <span class="RepeaterLi"><%#Eval("education")%></span>
       </div>

        <div class="major resume1-item">
           <p>专业:</p>
           <span class="RepeaterLi"><%#Eval("major")%></span>
       </div>

        <div class="native resume1-item">
           <p>籍贯:</p>
           <span class="RepeaterLi"><%#Eval("native")%></span>
       </div>

        <div class="birthday resume1-item">
           <p>生日</p>
          <span class="RepeaterLi"><%#Eval("native")%></span>
       </div>

        <div class="hobby resume1-item">
           <p>爱好</p>
           <span class="RepeaterLi"><%#Eval("hobby")%></span>
       </div>

        <div class="mobile  resume1-item">
           <p>号码:</p>
           <span class="RepeaterLi"><%#Eval("mobile")%></span>
       </div>

        <div class="email   resume1-item">
           <p>邮箱:</p>
          <span class="RepeaterLi"><%#Eval("email")%></span>
       </div>

        <div class="githup  resume1-item">
           <p>githup :</p>
           <span class="RepeaterLi"><%#Eval("githup")%></span>
       </div>

        <div class="dizhi resume1-item">
           <p>地址:</p>
           <span class="RepeaterLi"><%#Eval("dizhi")%></span>
       </div>
           </ItemTemplate>
       </asp:Repeater>
  
          
    </div> 
</body>
</html>
