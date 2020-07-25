using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.mains
{
    public partial class detailsprodect : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
           


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Labelmassge.Text = "Can not buy because you are not signed in any account";
            }
            else
            {

                SqlDataSource2.InsertCommand = "INSERT INTO [Sales] ([PId],[UId],[date]) VALUES (@ppp, @uuu, @ddd)";
              
                
                SqlDataSource2.InsertParameters.Add("ppp", Request.QueryString["ID"]);
                SqlDataSource2.InsertParameters.Add("uuu", Session["UId"].ToString());
                SqlDataSource2.InsertParameters.Add("ddd", DateTime.Now.ToString());

                int rowsAffected = SqlDataSource2.Insert();
                Labelmassge.Text = "Purchased successfully";



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