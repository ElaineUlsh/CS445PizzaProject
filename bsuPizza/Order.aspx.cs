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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            //Add the below coding into Page_Load method
            if (Session["user"] == null) {
                Response.Write("<script language=javascript> var agree; agree=confirm('You have to log in first'); window.location='Login.aspx';</script>");
            }
            decimal price = updatePrice();
            LabelPrice.Text = "Total Price:" + price;
        }//Close Page_load Method

        protected decimal updatePrice()
        {
            decimal price = Convert.ToDecimal(DropDownListPizzaSize.SelectedValue);
            for (int i = 0; i < CheckBoxListToppings.Items.Count; i++)
            {
                if (CheckBoxListToppings.Items[i].Selected)
                {
                    price += Convert.ToDecimal(CheckBoxListToppings.Items[i].Value);
                }
            }//close for loop
            return price;
        }//Close updatePrice() method

        protected void DropDownListPizzaSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            decimal price = updatePrice();
            LabelPrice.Text = "Total Price:" + price;
        }

        protected void CheckBoxListToppings_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Display toppings’ picture
            if (CheckBoxListToppings.Items.FindByText("Grilled Chicken").Selected) {
                ImageChicken.Visible = true;
            } else {
                ImageChicken.Visible = false;
            } // close else

            if (CheckBoxListToppings.Items.FindByText("Pepperoni").Selected) {
                ImagePepperoni.Visible = true;
            } else {
                ImagePepperoni.Visible = false;
            } // close else

            if (CheckBoxListToppings.Items.FindByText("Steak").Selected) {
                ImageSteak.Visible = true;
            } else {
                ImageSteak.Visible = false;
            }// close else
        }// Close CheckBoxListToppings_SelectedIndexChanged method

        protected void ButtonNext_Click(object sender, EventArgs e)
        {
            decimal basePrice = updatePrice();
            double priceWithTax = (double)basePrice * 1.07;
            string toppings = "";

            for (int i = 0; i < CheckBoxListToppings.Items.Count; i++)
            {
                if (CheckBoxListToppings.Items[i].Selected)
                {
                    toppings += CheckBoxListToppings.Items[i].Text + ", ";
                }
            }//close for loop

            ShoppingCartUtil cart = new ShoppingCartUtil();
            cart.UserName = "BSU";
            cart.UserName = Session["user"].ToString();
            cart.PizzaSize = DropDownListPizzaSize.SelectedItem.ToString();
            cart.PizzaStyle = DropDownListPizzaStyle.SelectedItem.ToString();
            cart.Toppings = toppings;
            cart.Price = priceWithTax;
            cart.InsertShoppingCart();

            LabelPrice.Text = "$" + priceWithTax;
            LabelPrice.ForeColor = Color.Red;
            Response.Redirect("OrderConfirm.aspx?=id"+cart.ID);
        } // Close ButtonNext_Click method
    }
}