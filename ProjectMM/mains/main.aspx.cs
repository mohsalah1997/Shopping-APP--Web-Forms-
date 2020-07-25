using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.mains
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text= "<a href=/log/log.aspx>log in</a>";
            if (Session["UserName"] == null)
            {
                ButtonLog.Visible = false;
                Label1.Text = "<a href=/log/log.aspx>log in</a>";
            }
            else
                
            {
     
                    Label1.Text = "<a href=profile.aspx>" + Session["UserName"].ToString() + "</a>";
                


            }



           


            DataView DV = (DataView)SqlDataSourceNews.Select(DataSourceSelectArguments.Empty);

            if (DV.Count > 0)
            {


                Label2.Text = "<marquee onmouseover=stop() onmouseout=start() direction=right><Font color=Blue size=+2>";

                for (int i = 0; i < DV.Count; i++)
                    Label2.Text += "<a target=_blank href=news.aspx?id=" + DV.Table.Rows[i].ItemArray[0].ToString() + ">" + DV.Table.Rows[i].ItemArray[1].ToString() + "</a>" + "  ::  ";

                Label2.Text += "</Font></marquee>";

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