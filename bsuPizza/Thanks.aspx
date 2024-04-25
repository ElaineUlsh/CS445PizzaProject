<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thanks.aspx.cs" Inherits="bsuPizza.Thanks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Thanks</title>
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
            .form-group{
                color:red;
                font-weight: bold;
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
                    <li><a href="Registration.aspx" data-localize="nav.becomeAMember">Become a
                    member</a></li>
                </ul>
            </nav>
        </header>
        <div id="drawerMenu" class="drawer dw-xs-8 fold"><!-- Start drawerMenu-->
            <div class="drawer-controls visible-xs-block">
                <a href="#drawerMenu" data-toggle="drawer" class="btn btn-primary btn-lg"
                style="font-size: 30px; padding: 0px 5px 0px 5px"> &equiv;</a>
            </div>
            <div class="drawer-contents"><!-- Start drawer-contents-->
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
                        This page is for BSU Pizza store, you can order variety flavors of pizza on our
                        website.
                        Also, this page is the sample for presentation.
                    </p>
                </div>
                <div class="drawer-footer locked text-center">
                    <small>&copy; Dr. Jeff Zhang</small>
                </div>
            </div><!-- Close drawer-contents-->
        </div><!-- Close drawerMenu-->
        <div class="container"> <!-- Start container-->
            <form id="formThanks" class="form-horizontal" runat="server">
                <br />
                <br />
                <br />
                <br />
                <div class="row"> <!-- Start row -->
                    <div class="form-group col-sm-offset-3">
                        <asp:Label ID="Label2" runat="server" Text="Confirm Your Order!" Font-Size="X-Large"></asp:Label>
                    </div>
                    <asp:Label 
                        ID="LabelMessage" 
                        runat="server"
                        Text="Thanks for your ordering, your hot-fresh pizza is on its way!" 
                        Font-Size="X-Large"
                        ForeColor="Yellow"></asp:Label>
                    <br />
                </div><!-- Close row -->
                <br />
                <br />
                <br />
                <br />
                <asp:Button 
                    ID="BackToHome" 
                    runat="server" 
                    Text="Go back to Home Page" 
                    class="btn btn-lg btn-primary"
                    OnClick="BackToHome_Click"/>
            </form>
        </div> <!-- Close container-->
        <!-- close container -->
        <script src="js/drawer.js"></script>
        <script>$('#drawerMenu').drawer({ toggle: false });</script>
    </body>
</html>

