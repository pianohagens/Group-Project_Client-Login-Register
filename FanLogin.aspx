<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanLogin.aspx.cs" Inherits="FanLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Final Project by Kristopher Chambers and Piano Hagens Fan Login Form</title>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" />
</head>
<body>
    <form id="fanlogin_form" runat="server">
       <div id="wrapper">
        <header>
            <h1>Final Project</h1>
            <h3>By Kristopher Chambers and Piano Hagens</h3>
            <h3>Fan Login Form </h3>
        </header>
        <section class="fanlogin">

                <h2> Registered Fan Login</h2>
                <p><label class="field_name">Username</label><asp:TextBox ID="UserNameTextBox" runat="server" CssClass="field" ></asp:TextBox>
<asp:RequiredFieldValidator ID="LoginUserNameRequiredFieldValidator" runat="server" ErrorMessage="User Name is required" ControlToValidate="UserNameTextBox" CssClass="error">This field is required</asp:RequiredFieldValidator>
                </p>
                <p><label class="field_name">Password</label><asp:TextBox ID="PasswordTextBox" runat="server" CssClass="field"  TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LoginPasswordREquiredFieldValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PasswordTextBox" CssClass="error">This field is required</asp:RequiredFieldValidator>
                </p>
                <p><asp:Label ID="LoginErrorLabel" runat="server" CssClass="error"></asp:Label></p>
                <p><asp:Button ID="LoginButton" runat="server" Text="Login" Height="45px" Width="80px" OnClick="LoginButton_Click" /></p>

            <p>I have no registered yet!</p>
            <p> <asp:LinkButton ID="FanRegisterLinkButton" runat="server" PostBackURL="~/FanRegister.aspx" CausesValidation="false">New Fan Register Here</asp:LinkButton> </p>
            <p> <asp:LinkButton ID="FanSelectShowLinkButton" runat="server" PostBackURL="~/FanSelectShow.aspx" CausesValidation="false">Registered Fan Select Show Here</asp:LinkButton> </p>
           </section>
    
    </div>
    </form>
</body>
</html>
