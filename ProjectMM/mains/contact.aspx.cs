using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.mains
{
    public partial class contact : System.Web.UI.Page
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

        protected void Buttonsend_Click(object sender, EventArgs e)
        {
            if (TextBoxName.Text!=""&& TextBoxemail.Text != ""&& TextBoxobject.Text != ""&& TextBoxmessage.Text != "")
            {
                SqlDataSource1.InsertCommand = "INSERT INTO [Message] ([name], [email], [object],[message]) VALUES (@nnn, @eee, @ooo, @mmm)";
                SqlDataSource1.InsertParameters.Add("nnn", TextBoxName.Text);
                SqlDataSource1.InsertParameters.Add("eee", TextBoxemail.Text);
                SqlDataSource1.InsertParameters.Add("ooo", TextBoxobject.Text);
                SqlDataSource1.InsertParameters.Add("mmm", TextBoxmessage.Text);
                int rowsAffected = SqlDataSource1.Insert();
                Label1.Text = "Message sent successfully";
            }else
            {
                Label1.Text = "Message is not sent successfully, one field can be empty";

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