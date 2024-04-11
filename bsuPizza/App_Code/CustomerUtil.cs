using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace bsuPizza.App_Code
{
    public class CustomerUtil // Start CustomerUtil class
    {
        public String UserName { get; set; }
        public String FName {  get; set; }
        public String LName { get; set; }
        public String Email { get; set; }
        public String Password { get; set; }
        public String Country { get; set; }
        public String Age { get; set; }
        public String Gender { get; set; }

        public void InsertData() { // Start insertData method
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bsuPizza"].ConnectionString);
            conn.Open();
            String insertString = "insert into Customer (UserName, FName, LName, Email, Country, Password, Age, Gender)"
                + "values (@UserName, @FName, @LName, @Email, @Country, @Password, @Age, @Gender)";
            SqlCommand cmd = new SqlCommand(insertString, conn);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@FName", FName);
            cmd.Parameters.AddWithValue("@LName", LName); 
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Country", Country);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@Age", Age);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.ExecuteNonQuery();
            conn.Close(); 
        } // Close insertData method

        public bool CheckUserExists() { //Start checkUserExists method
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bsuPizza"].ConnectionString);
            conn.Open();
            String checkForUser = "select * from Customer where UserName=@UserName";
            SqlCommand cmd = new SqlCommand(checkForUser, conn);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                conn.Close();
                return true;
            }
            dr.Close();
            conn.Close();
            return false;
        } // Close checkUserExists method

        public bool CheckPassword() { // Start checkPassword method
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bsuPizza"].ConnectionString);
            conn.Open();
            String checkUser = "select * from Customer where UserName=@UserName";
            SqlCommand cmd = new SqlCommand(checkUser, conn);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows) {
                if (dr["Password"].ToString().Equals(Password)) {
                    dr.Close();
                    conn.Close();
                    return true;
                }
            }
            dr.Close();
            conn.Close();
            return false;
        } // Close checkPassword method
    } // Close CustomerUtil class
} // Close bsuPizza.App_Code