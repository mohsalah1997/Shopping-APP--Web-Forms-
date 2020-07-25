using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.mains
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelLog.Text = "<a href=/log/log.aspx>log in</a>";
            if (Session["UserName"] == null)
            {
                ButtonLog.Visible = false;
                LabelLog.Text = "<a href=/log/log.aspx>log in</a>";
            }
            else

            {
                LabelLog.Text = "<a href=profile.aspx>" + Session["UserName"].ToString() + "</a>";



            }


        }
        protected void ButtonLog_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Session["UserName"] = null;
                LabelLog.Text = "<a href=/log/log.aspx>log in</a>";
                Response.Redirect("main.aspx");
            }
            

        }
    }
}