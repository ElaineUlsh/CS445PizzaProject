using bsuPizza.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bsuPizza
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) {
                LabelWelcome.Text = "Please <a href='Login.aspx'>log in</a> first, " + LabelWelcome.Text;
            } else {
                LabelWelcome.Text = Session["user"].ToString() + ", " + LabelWelcome.Text;
            }
        } // Close Page_Load method

        protected void ButtonContact_Click(object sender, EventArgs e)
        {
            ContactUti con = new ContactUti();
            con.Name = TextBoxName.Text;
            con.Content = TextBoxContact.Text;
            con.InsertLog();
            LabelMessage.Text = "Sending Successful!";
            ButtonContact.Visible = false;
            LabelMessage.Visible = true;
            Response.Write("<script LANGUAGE='JavaScript'>alert('Your suggestion has been sent to our database')</script>");
        } // close ButtonContact_Click method
    }
}