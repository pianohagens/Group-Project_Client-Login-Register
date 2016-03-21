using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanLogin : System.Web.UI.Page
{
    ServiceReference.FinalProjectServiceClient frg = new ServiceReference.FinalProjectServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        ServiceReference.FanRegister fr = new ServiceReference.FanRegister();

        fr.FanLoginUserName = UserNameTextBox.Text;
        fr.FanLoginUserName = PasswordTextBox.Text;

        int result = frg.Fangistration(fr);
        if (result != 1)
            LoginErrorLabel.Text = "Successfuly Login";
        else
            LoginErrorLabel.Text = "Login Failed, You might need to check your registration status";
    }
}