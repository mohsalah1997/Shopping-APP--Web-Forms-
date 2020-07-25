using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.admin
{
    public partial class AddNews : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strRealPath;
            strRealPath = Request.PhysicalApplicationPath;
            strRealPath += "Images\\";

            if (FileUpload1.HasFile)
            {
                if (System.IO.Directory.Exists(strRealPath))
                {
                    if (!System.IO.File.Exists(strRealPath + FileUpload1.FileName))
                    {
                        if (FileUpload1.PostedFile.ContentLength < 60000)
                        {
                            FileUpload1.SaveAs(strRealPath + FileUpload1.FileName);

                            SqlDataSource1.InsertCommand = "INSERT INTO [News] ([Ntittle],[Ndetalies],[pic]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','"  + FileUpload1.FileName.ToString() + "')";

                            int rowsAffected = SqlDataSource1.Insert();

                            Label1.Text = "Successfully added";
                        }
                        else
                        {
                            Label1.Text = "The file size is greater than 15000";
                        }
                    }
                    else
                    {
                        Label1.Text = "This file exists Try changing the file name";
                    }
                }
                else
                {
                    Label1.Text = "The folder where the files will be uploaded does not exist on the server";
                }
            }
            else
            {
                Label1.Text = "Select a file to upload";
            }
        }
    }
}