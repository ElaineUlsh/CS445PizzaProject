<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="bsuPizza.UserAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title> UserAccount</title>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <form id="UserAccount" runat="server" class="form-horizontal">
            <div class="form-group"> <!-- Start user name Group-->
                <div class="col-sm-4 control-label">
                    <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                </div>
                <div class="col-sm-4"> <!-- textbox -->
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                </div> <!-- Close last Name textBox -->
                <div class="col-sm-4"><!-- Validation -->
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidatorUserName"
                        runat="server" 
                        ErrorMessage="User Name is required!"
                        ControlToValidate="txtUserName" 
                        Font-Bold="true"
                        ForeColor="red"></asp:RequiredFieldValidator>
                </div><!-- Close Validation -->
            </div><!-- Close User name Group-->
            <div class="form-group"><!-- Start Password group-->
                <div class="col-sm-4 control-label"> <!-- textBox label-->
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                </div><!-- Close textBox label-->
                <div class="col-sm-4"><!-- textBox input box-->
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div> <!-- close textBox input box-->
                <div> <!-- Validation -->
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidatorPassword" 
                        runat="server"
                        ErrorMessage="Password Required!"
                        ControlToValidate="txtPassword" 
                        Font-Bold="true" 
                        ForeColor="red">
                    </asp:RequiredFieldValidator>
                </div> <!-- Close Validation -->
            </div> <!-- Close Password group-->
            <!-- add the buttons at the bottom of form-->
            <div class="form-group"><!-- Start buttons group-->
                <div class="col-sm-4 control-label"> <!-- label-->
                    <asp:Label ID="lblWelcome" runat="server" Text="Welcome"></asp:Label><br />
                    <asp:Label ID="lblShow" runat="server" Text="Showing Encrypt Password"></asp:Label>
                </div><!-- Close label-->
                <div class="col-sm-4"> <!-- two buttons-->
                    <asp:Button class="btn btn-primary" ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
                </div><!-- close two button-->
            </div><!-- close buttons group-->
        </form> <!--Close form-->
    </body>
</html>
