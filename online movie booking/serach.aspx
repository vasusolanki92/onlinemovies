﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="serach.aspx.cs" Inherits="online_movie_booking.serach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="header">
      <center>  <asp:DataList ID="DataList1" Width="87%"  runat="server" RepeatColumns="4" RepeatDirection="Horizontal" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" >
          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
          <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
          <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
          <ItemTemplate>
             
               Movie name:-<asp:Label ID="Label1" runat="server" Text='<%# Bind("moviename") %>'></asp:Label>
              <br />
              <br />
              Photo:-<asp:Image ID="Image1" runat="server" Height="214px" Width="159px" ImageUrl='<%# Bind("mimage") %>' />
              <br />
              <br />
              Movie&nbsp; Description:-<asp:Label ID="Label2" runat="server" Text='<%# Bind("mdes") %>'></asp:Label>
              <br />
              <br />
              Rate:-<asp:Label ID="Label3" runat="server" Text='<%# Bind("mrate") %>'></asp:Label>
              <br />
              <br />
              <asp:Button ID="Button1" runat="server" Height="28px" Text="Book Now" Width="99px" />
          </ItemTemplate>
          <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList></center>
    
    </div>
        </div>
    </form>
</body>
</html>
