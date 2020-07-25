using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.log
{
    public partial class log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = null;

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            Label1.Text = "";

            DataView DV = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
           

            if (DV.Count == 1)
            {
                
                if (TextBoxPassword.Text == DV.Table.Rows[0].ItemArray[2].ToString())
                {


                    Session.Add("UserName", TextBoxName.Text);
                    Session.Add("UserType", DV.Table.Rows[0].ItemArray[3].ToString());
                    Session.Add("UId", DV.Table.Rows[0].ItemArray[0].ToString());

                    if (CheckBox1.Checked == true)
                    {
                        Response.Cookies.Add(new HttpCookie("UserName", TextBoxName.Text));
                        Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(11);
                    }
                    if(DV.Table.Rows[0].ItemArray[3].ToString()=="user")
                    Response.Redirect("/mains/main.aspx");
                    else
                    {
                        Response.Redirect("/admin/AdminPageDufalt.aspx");
                       
                    }

                }
                else
                    Label1.Text = "Username or password is incorrect";
            }
            Label1.Text = "Username or password is incorrect";
        }
    }
}