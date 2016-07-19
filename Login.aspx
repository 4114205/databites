<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    
        <style type="text/css">
        .auto-style1 {
            background-color: #D2E0AB;
        }
    </style>    
</head>
    <body background="http://cravedujour.com/wp-content/uploads/2015/05/Food-Background.jpg" alt="banner">
        <form id="form1" runat="server">
        <h1 style="text-align: center; width: 164px; margin-left: 385px; height: 37px;" class="auto-style1">Data Bites&nbsp;</h1>
        <p style="width: 934px; text-align: center; margin-top: 16px"> <em>Convenience & Quality for the Foodies&nbsp; </em></p>
        
        <p>
            <strong>Login:</strong></p>
        <p>
            Username:<asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-left: 15px" Width="180px"></asp:TextBox>
        </p>
        <p>
            Password:<asp:TextBox ID="TextBox2" runat="server" Height="16px" style="margin-left: 16px; margin-top: 0px" Width="181px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Height="24px" Text="Submit" Width="56px" />
        </p>
    </div>
    </form>
</body>
</html>
