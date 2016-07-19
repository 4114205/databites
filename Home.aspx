<%@ Page Language="VB" %>
<%@ Import Namespace="system.data" %>
<script runat="server">
    
    Sub displayInfo(ByVal s As Object, ByVal e As EventArgs)
        lbl1.Text = "The bullshit of bullshit" & cuisineList.SelectedItem.Text & "is: " & cuisineList.SelectedItem.Value
           
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #D2E0AB;
        }
        .auto-style2 {
            margin-left: 152px;
        }
        .auto-style3 {
            margin-left: 365px;
        }
        .auto-style5 {
            height: 22px;
            width: 77px;
            margin-left: 102px;
        }
        .auto-style8 {
            width: 356px;
            margin-left: 104px;
        }
        .auto-style9 {
            margin-left: 103px;
        }
    </style>
</head>
<body background="http://cravedujour.com/wp-content/uploads/2015/05/Food-Background.jpg">
    <form id="form1" runat="server">
        <h1 style="text-align: center; width: 164px; margin-left: 385px; height: 37px;" class="auto-style1">
            Data Bites</h1>
            
            <asp:Button ID="Button3" runat="server" Height="22px" style="margin-top: 0px;" Text="Create New User" Width="154px" CssClass="auto-style2" />
            
            <asp:Button ID="Button2" runat="server" style="margin-top: 1px" Text="Login" Width="113px" Height="22px" CssClass="auto-style3" /> 
            
        <p style="width: 934px; text-align: center; margin-top: 16px"> <em>Convenience & Quality for the Foodies&nbsp; </em></p>
    <p style="height: 22px; width: 77px; margin-left: 90px; margin-top: 19px">&nbsp;<a href="Default3.aspx">Restaurant</a></p>
        
        
        <p class="auto-style5" style="margin-top: 19px">
            Restaurant<asp:DropDownList ID="restaurantList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="displayInfo" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Price_Range" Height="29px" Width="173px">
            </asp:DropDownList>
            <p><asp:Label ID="lbl2" runat="server" /></p>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT *
FROM Restaurant
LEFT OUTER JOIN Restaurant_Location ON (Restaurant.Restaurant_ID = Restaurant_Location.Restaurant_ID)
LEFT OUTER JOIN CUISINE ON (Restaurant.Cuisine_ID = Cuisine.Cuisine_ID)

"></asp:SqlDataSource>
        </p>
        
        
    <p>
        &nbsp;</p>
    <p class="auto-style8">
        &nbsp;Cusines</p>
        <asp:dropdownlist ID="cuisineList" runat="server" OnSelectedIndexChanged="displayInfo" CssClass="auto-style9" AutoPostBack="True" DataSourceID="XmlDataSource1" DataTextField="cuisinetype" DataValueField="Name" Width="272px">      
              
        </asp:dropdownlist>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Restuantbullshit.xml"></asp:XmlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Cuisine_Name] FROM [CUISINE]"></asp:SqlDataSource>
        
        <p><asp:Label ID="lbl1" runat="server" />
        </p>
        <asp:Table ID="Table1" runat="server">

        </asp:Table>
    </form>

    </body>
</html>
