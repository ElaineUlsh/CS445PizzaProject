using bsuPizza.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bsuPizza
{
    public partial class UserAccount : System.Web.UI.Page
    {
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text.ToString();
            String password = txtPassword.Text;

            string pass = EncryptPassword.encryptString(password);
            lblShow.Text = pass;
            lblShow.ForeColor = Color.Red;

            string connection = ConfigurationManager.ConnectionStrings["bsuPizza"].ToString();
            SqlConnection con = new SqlConnection(connection);
            String passwords = EncryptPassword.encryptString(password);
            con.Open();

            string sql = "INSERT INTO UserAccount (UserName, Password) VALUES ('" +
            username + "','" + passwords + "');";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            String Message = "saved Successfully";
            lblWelcome.Text = Message.ToString();

            con.Close();
        } //Close btnSignUp
    } //class UserAccount
}