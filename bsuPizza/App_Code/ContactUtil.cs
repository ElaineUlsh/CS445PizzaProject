using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace bsuPizza.App_Code
{
    public class ContactUti
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Content { get; set; }
        public string Time { get; set; }
        public ContactUti()
        {
        }
        public void InsertLog() {
            SqlConnection conn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["bsuPizza"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into ContactLog(Name, Content) values (@Name, @Content)";
            SqlCommand comd = new SqlCommand(insertQuery, conn);
            comd.Parameters.AddWithValue("@Name", Name);
            comd.Parameters.AddWithValue("@Content", Content);
            comd.ExecuteNonQuery();
            conn.Close();
        }
    }
}