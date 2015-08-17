using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void button_click(object sender, EventArgs e)
    {
        if (upload.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(upload.FileName);
                //Random r = new Random();
                //int x = r.Next();
                upload.SaveAs(Server.MapPath("~/file/") + filename);
                img.ImageUrl = "file/" + filename;
                lb.Text = "Upload status: File uploaded!";
            }
            catch (Exception ex)
            {
                lb.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
    
    
    }

}



