<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="online_movie_booking.Home" %>
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
    <div class="header">
    <%--<div class="banner">
 <div class="wrap">
      <section class="slider">
        <div class="flexslider">
          <ul class="slides">
            <li>
  	    	    <img src="images/banner1.jpg" alt=""/>
  	    	</li>
  	    	<li>
  	    	    <img src="images/banner.jpg"  alt=""/>
  	    	</li>
  	    	<li>
  	    	    <img src="images/banner2.jpg"  alt=""/>
  	    	</li>
  	    	<li>
  	    	    <img src="images/banner3.jpg"  alt=""/>
  	    	</li>
          </ul>
        </div>
      </section>
   </div>
</div>--%>
        
     

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    <div class="main">
		<div class="header" >
			<h1>Login or Create a Free Account!</h1>
		</div>
		<p></p>
			<div>
                <asp:Label ID="lblreg" runat="server" />
				<asp:Label ID="Label1" runat="server"></asp:Label>
				<ul class="left-form">
					<h2>New Account:</h2>
					<li>
						&nbsp;<asp:TextBox ID="TextBox1" runat="server" placeholder="Name" ></asp:TextBox>
					
						<div class="clear"> </div>
					</li> 
					<li>
						&nbsp;<asp:TextBox ID="TextBox2" runat="server" placeholder="Email" ></asp:TextBox>
						<div class="clear"> </div>
					</li> 
					<li>
						&nbsp;<asp:TextBox ID="TextBox3" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
						<div class="clear"> </div>
					</li> 
					<li>
						&nbsp;<div class="clear"> </div>
					</li> 
					&nbsp;<asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
						<div class="clear"> </div>
				</ul>
				<ul class="right-form">
					<h3>Login:</h3>
					<div>
						&nbsp;<asp:TextBox ID="TextBox5" runat="server" placeholder="Email" ></asp:TextBox>
						&nbsp;<asp:TextBox ID="TextBox6" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
						<h4>I forgot my Password! </h4>
                         <asp:Button ID="Button2" runat="server" Text="Log in" OnClick="Button2_Click1" />
					</div>
					<div class="clear"> </div>
				</ul>
				<div class="clear"> </div>
					
			</div>
			
		</div>
			<%--<!-----start-copyright---->
   					<div class="copy-right">
						<p>Template by <a href="http://w3layouts.com">w3layouts</a></p> 
					</div>
				<!-----//end-copyright---->--%>
                </ContentTemplate>
            </asp:UpdatePanel>
    </div>
</asp:Content>
