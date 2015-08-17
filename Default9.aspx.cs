using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

public partial class Default9 : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());


    }




    protected void submit_Click(object sender, EventArgs e)
    {
        
            SqlCommand cmd;
         cmd = new SqlCommand("INSERT INTO [create_topic] ([userid] ,[title],[description] ,[access],[relatedpic],[date]) VALUES (@id,@title,@description,@access,@relatedpic,@date)", con);
      
        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
           cmd.Parameters.AddWithValue("@title",txttitle.Text);
         cmd.Parameters.AddWithValue("@description", txtdescp.InnerText);
        cmd.Parameters.AddWithValue("@access", drpaccess.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@relatedpic", img.ImageUrl);
        cmd.Parameters.AddWithValue("@date", DateTime.Now);
           con.Open();
         cmd.ExecuteNonQuery();
        
        con.Close();
        txttitle.Text = "";
        txtdescp.InnerText = "";
        drpaccess.Text = "";
        



    }


    protected void upload_Click(object sender, EventArgs e)
    {

        if (fileupload.HasFile)
        {
            string fileExt = Path.GetExtension(fileupload.FileName);

            if (fileExt == ".jpeg" || fileExt == ".jpg" || fileExt == ".gif" || fileExt == ".png")
            {
                try
                {
                    string filename = Path.GetFileName(fileupload.PostedFile.FileName);
                    //Random r = new Random();
                    //int x = r.Next();
                    fileupload.SaveAs(Server.MapPath("~/file/") + filename);
                    img.ImageUrl = "file/" +filename;
                    lb.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    lb.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
    }
}