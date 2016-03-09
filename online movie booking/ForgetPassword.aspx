<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="online_movie_booking.ForgetPassword" %>
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
			
		</div>
		<p> </p>
			<div>
                <ul class="left-form">
                    <asp:Panel ID="pnl1" runat="server">
                    <h2>Forgot Password</h2>
					<li>
						&nbsp;<asp:TextBox ID="TextBox1" runat="server" placeholder="Registered Email..." ></asp:TextBox>
					
						<div class="clear"> </div>
					</li> 
					
					&nbsp;<asp:Button ID="Button1" runat="server" Text="submit"  />
						<div class="clear"> </div></asp:Panel>
				</ul>
					<ul class="right-form">
                        <asp:Panel ID="pnl2" runat="server">
					<h3></h3>
					<div>
						&nbsp;<asp:TextBox ID="TextBox5" runat="server" placeholder="New Password" ></asp:TextBox>
						&nbsp;<asp:TextBox ID="TextBox6" runat="server" placeholder="Confirm Password" TextMode="Password" ></asp:TextBox>
						<h4>
                            <asp:Label ID="lblfrgt"  runat="server" /> </h4>
                         <asp:Button ID="Button2" runat="server" Text="Submit"  />
					</div>
					<div class="clear"> </div></asp:Panel>
				</ul>
				<div class="clear"> </div>
					
    </div>
    </div>
</asp:Content>
