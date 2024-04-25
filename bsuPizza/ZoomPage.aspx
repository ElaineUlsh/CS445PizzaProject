<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZoomPage.aspx.cs" Inherits="bsuPizza.ZoomPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Zoom Page</title>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link href="js/jqzoom_ev-2.3/css/jquery.jqzoom.css" rel="stylesheet" />
        <script src="js/jqzoom_ev-2.3/js/jquery-1.6.js"></script>
        <script src="js/jqzoom_ev-2.3/js/jquery.jqzoom-core.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                var options = {
                    zoomType: 'standard',
                    lens:true,
                    preloadImages: true,
                    alwaysOn:false,
                    zoomWidth: 600,
                    zoomHeight: 400,
                    xOffset:90,
                    yOffset:30,
                    position:'left'
                };
                $('.MYCLASS').jqzoom(options);
            });
        </script>
    </head>
    <body>
        <a href="images/pizza_big.jpg" class="MYCLASS">
            <img src="images/pizza_small.jpg" />
        </a>
        <form id="formZoom" runat="server">
            <div>
                <asp:Button 
                    ID="BackToHome" 
                    runat="server" 
                    Text="Go back to Home Page" 
                    class="btn btn-lg btn-primary " 
                    OnClick="BackToHome_Click"/>
            </div>
        </form>
    </body>
</html>
