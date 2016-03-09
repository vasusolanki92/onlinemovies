<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_insertmovie.aspx.cs" Inherits="online_movie_booking.Admin_insertmovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style3">Movie-Wood:-</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" AutoPostBack="true"  runat="server" Height="21px" Width="181px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Movie-Type:-</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="179px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Movie-Name:-</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="163px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Image:-</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Rate:-</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="157px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Description:-</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="29px" Text="Submit" Width="107px" OnClick="Button1_Click" />
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
