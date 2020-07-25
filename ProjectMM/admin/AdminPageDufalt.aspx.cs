using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.admin
{
    public partial class AdminPageDufalt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["UserName"] == null)
            {
                Response.Redirect("/log/log.aspx");
            }
            else
                Label1.Text = Session["UserName"].ToString();
                
        }
    }
}