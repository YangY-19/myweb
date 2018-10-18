<%@ control language="C#" autoeventwireup="true" inherits="comm_menu, App_Web_20iuspx5" %>
<div class="swiper-container">
        <div class="swiper-wrapper">
          <asp:Repeater runat="server" ID="SW">
              <ItemTemplate>
                  <div class="swiper-slide" style="background-image:url(<%#Eval("img")%>)"></div>
              </ItemTemplate>
          </asp:Repeater>
          
        </div>
        <div class="swiper-pagination swiper-pagination-white"></div>
        <div class="swiper-button-next swiper-button-white"></div>
        <div class="swiper-button-prev swiper-button-white"></div>
      </div>