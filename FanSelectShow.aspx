<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanSelectShow.aspx.cs" Inherits="FanSelectShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Final Project by Kristopher Chambers and Piano Hagens Fan Selcet Show Form</title>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" />
</head>
<body>
    <form id="fanselectshowform" runat="server">
     <div id="wrapper">
        <header>
            <h1>Final Project</h1>
            <h3>By Kristopher Chambers and Piano Hagens</h3>
             <h3>Fan Selcet Show Form</h3>
        </header>
         <h2> Registered Fan Selcet Show </h2>
    <section class="selectshow">        
                <p>Logined as A Registed Fan, User Nmae is <asp:TextBox ID="FanUserName" runat="server"  ></asp:TextBox></p>

       <p> <asp:LinkButton ID="FanRegisterLinkButton" runat="server" PostBackUrl="~/FanRegister.aspx" CausesValidation="false">New Fan Register Here</asp:LinkButton>  </p>
        <p> <asp:LinkButton ID="FanLoginLinkButton" runat="server" PostBackUrl="~/FanLogin.aspx" CausesValidation="false"> Registered Fan Login Click Here</asp:LinkButton>                </p>
                <h1>Search Show Here</h1>
                <table>
            <tr><td>Select Artist</td>
                <td><asp:DropDownList ID="ArtistListDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ArtistListDropDownList_SelectedIndexChanged"></asp:DropDownList></td></tr>

             <tr><td>Select Show Name</td>
                <td><asp:DropDownList ID="ShowNameDropDownList" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="ShowNameDropDownList_SelectedIndexChanged" ></asp:DropDownList></td></tr>

            <tr><td>Select ShowDate</td>
             <td><asp:Calendar ID="ShowDateCalendar" runat="server" ></asp:Calendar> </td>     </tr>

            <tr><td>Select ShowTime</td>
             <td>
                 <asp:DropDownList ID="ShowTimeDropDownList" runat="server">
                     <asp:ListItem>10:00:00</asp:ListItem>
                     <asp:ListItem>12:00:00</asp:ListItem>
                     <asp:ListItem>14:00:00</asp:ListItem>
                     <asp:ListItem>10:00:00</asp:ListItem>
                     <asp:ListItem>16:00:00</asp:ListItem>

                 </asp:DropDownList>  </td>     </tr>
         

         <tr><td> <asp:Button ID="SelectShowSubmitButton" runat="server" Text="Submit" /></td>
              <td>
                  <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label> </td>
          </tr>
</table>
            </section>             
    </div>
    </form>
</body>
</html>
