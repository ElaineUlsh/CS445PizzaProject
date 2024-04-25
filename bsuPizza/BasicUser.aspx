<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasicUser.aspx.cs" Inherits="bsuPizza.BasicUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>User Information</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/introjs.css" />
        <link rel="stylesheet" href="css/bootstrap-drawer.css" />
        <link rel="stylesheet" href="css/liquid-slider.css" />
        <link rel="stylesheet" href="css/bsuPizza.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style type="text/css">
            .form-group {
                color:white;
            }
        </style>
    </head>
    <body class="has-drawer">
        <header class="container">
            <nav class="collapse navbar-collapse navbar-inverse">
                <img class="logo" src="images/bsulogo.jpg" alt="bsulogo" />
                <ul class="nav navbar-nav" id="navBar">
                    <li><a href="Home.aspx" data-localize="nav.home">Home</a></li>
                    <li><a href="Order.aspx" data-localize="nav.orderPizza">Order Pizza</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-localize="nav.userInformation">
                            <span>User Information</span>
                            <span class="caret" />
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="BasicUser.aspx" data-localize="nav.basicInformation">Basic Information</a></li>
                            <li><a href="DeliveryInfo.aspx" data-localize="nav.deliveryInformation">Delivery Information</a></li>
                        </ul>
                    </li>
                    <li><a href="Login.aspx" data-localize="nav.login">Login </a></li>
                    <li><a href="Registration.aspx" data-localize="nav.becomeAMember">Become a member</a></li>
                </ul>
                <div class="pull-right" id="languageChoose">
                    <a href="#" id="en">English</a>&emsp;
                    <a href="#" id="sp">Spanish</a>&emsp;
                    <a href="#" id="ch">Chinese</a>&emsp;
                    <a href="#" id="help" onclick="startIntro();">Help</a>
                </div>
            </nav>
        </header>
        <div id="drawerMenu" class="drawer dw-xs-8 fold">
            <div class="drawer-controls visible-xs-block">
                <a href="#drawerMenu" data-toggle="drawer" class="btn btn-primary btn-lg" style="font-size: 20px; padding: 0px 5px 0px 5px"> &equiv;</a>
            </div>
            <div class="drawer-contents">
                <div class="drawer-heading">
                    <h2 class="drawer-title">Menu</h2>
                </div>
                <ul class="drawer-nav">
                    <li class="active"><a href="Home.aspx">Home</a></li>
                    <li ><a href="Order.aspx">Order Pizza</a></li>
                    <li ><a href="Login.aspx">Login </a></li>
                    <li ><a href="Registration.aspx">Become a member</a></li>
                </ul>
                <div class="drawer-body">
                    <p>
                        This page is for BSU Pizza store, you can order variety flavors of pizza on our website.
                        Also, this page is the sample for presentation.
                    </p>
                    <p>
                        <a href="#" onclick="startIntro();">Help</a>
                    </p>
                </div>
                <div class="drawer-footer locked text-center">
                    <small>&copy; Dr. Jeff Zhang</small>
                </div>
            </div>
        </div>
        <form id="form1" runat="server" class="form-horizontal col-sm-offset-3 col-sm-6">
            <div id="form-group">
                <asp:GridView 
                    ID="GridViewUser" 
                    runat="server" 
                    AutoGenerateColumns="False"
                    BackColor="#CCCCCC" 
                    BorderColor="#999999" 
                    BorderStyle="Solid" 
                    BorderWidth="3px"
                    CellPadding="4" 
                    CellSpacing="2" 
                    DataKeyNames="UserName"
                    DataSourceID="SqlDataSourceUserInfo" 
                    ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource 
                    ID="SqlDataSourceUserInfo" 
                    runat="server"
                    ConnectionString="<%$ ConnectionStrings:bsuPizza %>" 
                    SelectCommand="SELECT * FROM [Customer] WHERE ([UserName] = @UserName)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </form>
    </body>
</html>
