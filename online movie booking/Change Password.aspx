<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="Change Password.aspx.cs" Inherits="online_movie_booking.Change_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
		<meta charset="utf-8">
		<link href="css1/style.css" rel='stylesheet' type='text/css1' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		<!--//webfonts-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
		<div class="header" >
			<h1>Change Your Password </h1>
		</div>
		<p> </p>
			<div>
                <asp:Label  ID="lbl" runat="server" />
				<ul class="left-form">
					<h2>Change Password</h2>
					<li>
						&nbsp;<asp:TextBox ID="TextBox1" runat="server" placeholder="Old Password" ></asp:TextBox>
					
						<div class="clear"> </div>
					</li> 
					<li>
						&nbsp;<asp:TextBox ID="TextBox2" runat="server" placeholder="New Password" ></asp:TextBox>
						<div class="clear"> </div>
					</li> 
					<li>
						&nbsp;<asp:TextBox ID="TextBox3" runat="server" placeholder="Confirm Password" ></asp:TextBox>
						<div class="clear"> </div>
					</li> 
					
				<li>
						&nbsp;<div class="clear"> </div>
					</li> 
					&nbsp;<asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click"  />
						<div class="clear"> </div>
				</ul>
				
				<div class="clear"> </div>
					
    </div>
    </div>
</asp:Content>
