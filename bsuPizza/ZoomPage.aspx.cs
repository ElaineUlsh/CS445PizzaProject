using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bsuPizza
{
    public partial class ZoomPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BackToHome_Click(object sender, EventArgs e)
        {
            Response.AddHeader("refresh", "2; url=Home.aspx");
        }
    }
}