using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.log
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Label1.Text = "";

            DataView DV = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataView DVEmail = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            if (DV.Count == 0 && DVEmail.Count==0)
            {
                if (TextBoxPasswoed.Text == TextBoxRePasswoed.Text)
                {
                    SqlDataSource1.InsertCommand = "INSERT INTO [Users] ( [UserName], [Password],[UserType], [Email]) " +
                        "VALUES ( @user_name, @pass, @userT, @mail)";

                    SqlDataSource1.InsertParameters.Add("user_name", TextBoxUserName.Text);
                    SqlDataSource1.InsertParameters.Add("pass", TextBoxPasswoed.Text);
                    SqlDataSource1.InsertParameters.Add("userT", "user");
                    SqlDataSource1.InsertParameters.Add("mail", TextBoxEmail.Text);
                    int rowsAffected = SqlDataSource1.Insert();
                    Label1.Text = "user adding";
                    Response.Redirect("log.aspx");
                }
                else
                {
                    Label1.Text = "mismatch password";

                }

            }






            else
            {
                Label1.Text = "the user or email alerady create ";
            }
        }
    }

}