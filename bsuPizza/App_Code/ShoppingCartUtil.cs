using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace bsuPizza.App_Code
{
    public class ShoppingCartUtil
    {
        public string ID { get; set; }
        public string UserName { get; set; }
        public string PizzaSize { get; set; }
        public string PizzaStyle { get; set; }
        public string Toppings { get; set; }
        public double Price { get; set; }
        public void InsertShoppingCart()
        {
            SqlConnection conn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["bsuPizza"].ConnectionString);
            conn.Open();
            string qryStr = "insert into [ShoppingCart] values (@UserName,@PizzaSize,@PizzaStyle,@Toppings, @Price) select @@identity";
            ////@@IDENTITY returns the last identity value generated for any table in the current session
            ///
            SqlCommand cmd = new SqlCommand(qryStr, conn);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@PizzaSize", PizzaSize);
            cmd.Parameters.AddWithValue("@PizzaStyle", PizzaStyle);
            cmd.Parameters.AddWithValue("@Toppings", Toppings);
            cmd.Parameters.AddWithValue("@Price", Price);

            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            ID = dr[0].ToString();

            dr.Close();
            conn.Close();
        }//close InsertShoppingCart method
    } //close ShoppingCartUtil class
}