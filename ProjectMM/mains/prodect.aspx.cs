using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.mains
{
    public partial class prodect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "<a href=/log/log.aspx>log in</a>";
            if (Session["UserName"] == null)
            {
                ButtonLog.Visible = false;
                Label1.Text = "<a href=/log/log.aspx>log in</a>";
            }
            else

            {
                Label1.Text = "<a href=profile.aspx>" + Session["UserName"].ToString() + "</a>";



            }

        }
        protected void ButtonLog_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Session["UserName"] = null;
                Label1.Text = "<a href=/log/log.aspx>log in</a>";
                Response.Redirect("main.aspx");
            }
            

        }
    }
}