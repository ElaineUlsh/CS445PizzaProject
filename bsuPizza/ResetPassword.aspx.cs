using bsuPizza.App_Code;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bsuPizza
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonResetPassword_Click(object sender, EventArgs e)
        {
            CustomerUtil c = new CustomerUtil().GetUserInformation(TextBoxUserName.Text);
            if (c.Email.Equals(TextBoxEmail.Text))
            {
                //int rand = new Random().Next(100000, 999999);
                //string newPassoword = "bsu"+rand;
                //Attention: we used the below one as easy way:
                string newPassoword = "12345bsu";
                c.ResetPassword(newPassoword); //call ResetPassword method
                LabelMessage.Visible = true;
                LabelMessage.Text = "Your password has been reset as: " + newPassoword;
                LabelMessage.ForeColor = Color.Red;
            }//close if
            else
            {
                LabelMessage.Visible = true;
                LabelMessage.Text = "You entered wrong email address!!";
                LabelMessage.ForeColor = Color.Red;
            }
        }//close ButtonResetPassword_Click method
    }
}