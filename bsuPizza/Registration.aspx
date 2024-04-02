<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="bsuPizza.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration </title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="Registration" runat="server" class="form-horizontal">

        <div class="form-group">
            <div class="col-sm-4">
                <asp:Label ID="lblFName" runat="server" Text="First Name"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control">

                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldName"
                    runat="server"
                    ErrorMessage="First Name is required!"
                    Font-Bold="true"
                    Fore-Color="Red"
                    ControlToValidate="txtFirstName">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server"
                    ErrorMessage="Last Name is required!"
                    Font-Bold="true"
                    Fore-Color="Red"
                    ControlToValidate="txtLastName">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldUserName"
                    runat="server"
                    ErrorMessage="User Name is required!"
                    Font-Bold="true"
                    Fore-Color="Red"
                    ControlToValidate="txtUserName">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-4">
                <asp:Label ID="lblWelcome" runat="server" Text="Welcome"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                    CssClass="btn btn-primary"></asp:Button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="btnReset" type="reset" value="Reset" class="btn btn-danger" />
            </div>
        </div>
    </form>
</body>
</html>
