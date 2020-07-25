using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMM.admin
{
    public partial class AddProduct : System.Web.UI.Page
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
           
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
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

                            SqlDataSource2.InsertCommand = "INSERT INTO [Prodect] ([CId],[Pname],[Pdetails],[price],[pic]) VALUES ('" + DropDownList1.SelectedValue + "','" + TextBoxProductName.Text + "','" + TextBoxDetails.Text + "','" + TextBoxPrice.Text + "','" + FileUpload1.FileName.ToString() + "')";

                            int rowsAffected = SqlDataSource2.Insert();

                            LabelAdd.Text = "Successfully added";
                        }
                        else
                        {
                            LabelAdd.Text = "The file size is greater than 15000";
                        }
                    }
                    else
                    {
                        LabelAdd.Text = "This file exists Try changing the file name";
                    }
                }
                else
                {
                    LabelAdd.Text = "The folder where the files will be uploaded does not exist on the server";
                }
            }
            else
            {
                LabelAdd.Text = "Select a file to upload";
            }
        }
    }
}