
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

        <!-- First name group -->
        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblFName" runat="server" Text="First Name"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldName"
                    runat="server"
                    ErrorMessage="First Name is required!"
                    Font-Bold="true"
                    ForeColor="Red"
                    ControlToValidate="txtFirstName">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <!-- Close first name group -->

        <!-- Last Name group -->
        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1"
                    runat="server"
                    ErrorMessage="Last Name is required!"
                    Font-Bold="true"
                    ForeColor="Red"
                    ControlToValidate="txtLastName">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <!-- Close last name group -->

        <!-- Username group -->
        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldUserName"
                    runat="server"
                    ErrorMessage="User Name is required!"
                    Font-Bold="true"
                    ForeColor="Red"
                    ControlToValidate="txtUserName">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <!-- Close username group -->

        <!-- Email group -->
        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </div>
            <div class=" col-sm-4">
                <asp:Textbox ID="txtEmail" runat="server" class="form-control"></asp:Textbox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator 
                    ID="email" 
                    runat="server"
                    ErrorMessage="Email Required!" 
                    ControlToValidate="txtEmail"
                    Font-Bold="true" 
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br/>
                <asp:RegularExpressionValidator 
                    ID="expressionEmail" 
                    runat="server"
                    Font-Bold="true" 
                    ForeColor="Red" 
                    ControlToValidate="txtEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ErrorMessage="You must enter a valid email address.">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <!-- Close email group -->

        <!-- Password group -->
        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </div>
            <div class=" col-sm-4">
                <asp:Textbox ID="txtPassword" TextMode="Password" runat="server" class="form-control"></asp:Textbox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator 
                    ID="validatePassword" 
                    runat="server"
                    ErrorMessage="Password Required!" 
                    ControlToValidate="txtPassword"
                    Font-Bold="true" 
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br/>
                <asp:RegularExpressionValidator 
                    ID="expressionPassword" 
                    runat="server"
                    Font-Bold="true" 
                    ForeColor="Red" 
                    ControlToValidate="txtPassword"
                    ValidationExpression="^[a-zA-Z0-9]{6,}$"
                    ErrorMessage="You must enter at least 6 characters.">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <!-- Close password group -->

        <!-- Confirm Password group -->
        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            </div>
            <div class=" col-sm-4">
                <asp:Textbox ID="txtConfirmPassword" TextMode="Password" runat="server" class="form-control"></asp:Textbox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredConfirmPassword" runat="server"
                    ErrorMessage="Confirm Password Required!" ControlToValidate="txtConfirmPassword"
                    Font-Bold="true" ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br/>
                <div class="col-sm-4 control-label">
                    <asp:CompareValidator runat="server"
                        ErrorMessage="Both Passwords must match."
                        ControlToCompare="txtPassword"                        
                        ControlToValidate="txtConfirmPassword"
                        ForeColor="Red">
                    </asp:CompareValidator>
                </div>
            </div>
        </div>
        <!-- Close confirm password group -->

        <!-- Country group -->
        <div class="form-group">
            <div class="col-sm-4 control-label"> <!-- country label -->
                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
            </div> <!-- close country label -->
            <div class="col-sm-4"> <!-- country dropdown box -->
                <asp:DropDownList ID="dropDownListCountry" runat="server" CssClass="form-control">
                    <asp:ListItem > </asp:ListItem>
                    <asp:ListItem>Mexico</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                </asp:DropDownList>
            </div> <!-- close country dropdown box -->
            <div class="col-sm-4"> <!-- country validation -->
                <asp:RequiredFieldValidator 
                    ID="requiredCountry" 
                    runat="server" 
                    ControlToValidate="dropDownListCountry"
                    Font-Bold="true" 
                    ForeColor="Red" 
                    ErrorMessage="Country required!">
                </asp:RequiredFieldValidator>
            </div> <!-- close country validation -->
        </div>
        <!-- Close Country group -->

        <!-- Age group -->
        <div class="form-group">
            <div class="col-sm-4 control-label"> <!-- age label -->
                <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
            </div> <!-- close age label -->
            <div class="col-sm-4"> <!-- age textbox -->
                <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
            </div> <!-- close age textbox -->
            <div class="col-sm-4"> <!-- age validation -->
                <asp:RequiredFieldValidator 
                    ID="requiredAge"
                    runat="server"
                    ControlToValidate="txtAge"
                    ErrorMessage="Age required!"
                    Font-Bold="true"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator 
                    ID="rageAge"
                    runat="server"
                    MinimumValue="18"
                    MaximumValue="100"
                    ErrorMessage="You must be at least 18 years old!"
                    ControlToValidate="txtAge"
                    Type="Integer"
                    Font-Bold="true"
                    ForeColor="Red">
                </asp:RangeValidator>
            </div> <!-- close age validation -->
        </div>
        <!-- Close Age group -->

        <!-- Gender group -->
        <div class="form-group">
            <div class="col-sm-4 control-label"> <!-- gender label -->
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </div> <!-- close gender label -->
            <div class="col-sm-8 radio-inline"> <!-- gender radio buttons -->
                <asp:RadioButton ID="radioButtonFemale" runat="server" Text="Female" Checked="true" GroupName="gender"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radioButtonMale" runat="server" Text="Male" Checked="true" GroupName="gender"/>
            </div> <!-- close gender radio buttons -->
        </div>
        <!-- Close Gender group -->

        <!-- Button group -->
        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblWelcome" runat="server" Text="Welcome"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                    CssClass="btn btn-primary"></asp:Button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="btnReset" type="reset" value="Reset" class="btn btn-danger" />
            </div>
        </div>
        <!-- Close button group -->

    </form>
</body>
</html>