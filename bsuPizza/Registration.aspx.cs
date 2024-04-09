using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bsuPizza.App_Code;

namespace bsuPizza {
    public partial class Registration : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnSubmit_Click(object sender, EventArgs e) {
            CustomerUtil c1 = new CustomerUtil();
            c1.UserName = txtUserName.Text;
            c1.FName = txtFirstName.Text;
            c1.LName = txtLastName.Text;
            c1.Email = txtEmail.Text;
            c1.Country = dropDownListCountry.SelectedItem.ToString();
            c1.Password = txtPassword.Text;
            c1.Age = txtAge.Text;
            if (radioButtonFemale.Checked) {
                c1.Gender = "F";
            } else {
                c1.Gender = "M";
            }

            if (!c1.CheckUserExists())
            {
                c1.InsertData();
                lblWelcome.Text = "You have registered successfully!";
                lblWelcome.ForeColor = Color.Red;
            } else {
                lblWelcome.Text = "User already exists!";
                lblWelcome.ForeColor = Color.Red;
            }
        }
    }
}