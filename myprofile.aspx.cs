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

public partial class myprofile : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
        
        if (!IsPostBack)
        {
            Panel1.Visible = true;
            panel3.Visible = false;
        
        }
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from prsnl_details where userid=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            lbname.Text = ifblank(dr[2].ToString());
            lbgender.Text = ifblank(dr[3].ToString());
            lbmobile.Text = ifblank(dr[4].ToString());
            lbemail.Text = ifblank(dr[5].ToString());
            lbaddress.Text = ifblank(dr[6].ToString());
            lbstate.Text = ifblank(dr[7].ToString());
            lbcity.Text = ifblank(dr[8].ToString());
            img.ImageUrl = ifblank(dr[9].ToString());
            
        }

        con.Close();

        cmd = new SqlCommand("select * from edu_details where userid=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
        con.Open();
        dr = cmd.ExecuteReader();


        if (dr.HasRows)
        {
            dr.Read();
            lbschname.Text =ifblank( dr[2].ToString());
            lbschSY.Text = ifblank(dr[3].ToString());

            lbschEY.Text = ifblank(dr[4].ToString());
            lbunname.Text = ifblank(dr[5].ToString());
            lbunsy.Text = ifblank(dr[6].ToString());
            lbuney.Text = ifblank(dr[7].ToString());
            lbpgname.Text = ifblank(dr[8].ToString());
            lbpgsy.Text = ifblank(dr[9].ToString());
            lbpgey.Text = ifblank(dr[10].ToString());

        }
        con.Close();



    }



    string ifblank(string item)
    {
        if (item == "")
        {
            return "Not Provided";
        }
        else
        {
            return item;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        Panel1.Visible = false;
        panel3.Visible = true;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        panel3.Visible = false;
    }
}


