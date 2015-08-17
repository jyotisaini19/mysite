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

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
            panel2.Visible = false;
            panel4.Visible = false;
            update1.Visible = false;
            cancel1.Visible = false;
            update2.Visible = false;
            cancel2.Visible = false;
            picedit.Visible = false;
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
                coverpic.ImageUrl = ifblank(dr[10].ToString());
            }

            con.Close();

            cmd = new SqlCommand("select * from edu_details where userid=@id", con);
            cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
            con.Open();
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                lbschname.Text = dr[2].ToString();
                lbschSY.Text = dr[3].ToString();

                lbschEY.Text = dr[4].ToString();
                lbunname.Text = dr[5].ToString();
                lbunsy.Text = dr[6].ToString();
                lbuney.Text = dr[7].ToString();
                lbpgname.Text = dr[8].ToString();
                lbpgsy.Text = dr[9].ToString();
                lbpgey.Text = dr[10].ToString();

            }
            con.Close();

        }
        else {

            Response.Redirect("default.aspx");
        }
    }
    

    protected void edit1_click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        edit1.Visible = false;
        panel2.Visible = true;
        update1.Visible = true;
        cancel1.Visible = true;
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from prsnl_details where userid=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            txtname.Text = dr[2].ToString();
            txtgender.Text = dr[3].ToString();
            txtmobile.Text = dr[4].ToString();
            txtemail.Text = dr[5].ToString();
            txtaddress.Text = dr[6].ToString();
            txtstate.Text = dr[7].ToString();
            txtcity.Text = dr[8].ToString();
           
        }

        con.Close();
    }
    
    protected void update1_click(object sender, EventArgs e)
    {
        SqlCommand cmd;
          cmd  = new SqlCommand("update prsnl_details set name=@name, gender=@gen, mobile=@mobile ,email=@email, address=@address, state=@state, city=@city where userid=@id", con);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@gen", txtgender.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@state", txtstate.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

       

         cmd = new SqlCommand("select * from prsnl_details where userid=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
       

        if (dr.HasRows)
        {
            dr.Read();
            lbname.Text = dr[2].ToString();
            lbgender.Text = dr[3].ToString();

            lbmobile.Text = dr[4].ToString();
            lbemail.Text = dr[5].ToString();
            lbaddress.Text = dr[6].ToString();
            lbstate.Text=dr[7].ToString();
            lbcity.Text = dr[8].ToString();
        }
        con.Close();
        

        Panel1.Visible = true;
        edit1.Visible = true;
        panel2.Visible = false;
        update1.Visible = false;
        cancel1.Visible = false;
    }


    
    protected void cancel1_click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        panel2.Visible = false;
        edit1.Visible = true;
        cancel1.Visible = false;
        update1.Visible = false;
    }
    protected void edit2_Click(object sender, EventArgs e)
    
    {

        panel3.Visible = false;
        edit2.Visible = false;
        panel4.Visible = true;
        update2.Visible = true;
        cancel2.Visible = true;
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from edu_details where userid=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            txtschname.Text = dr[2].ToString();
           txtschsy.Text = dr[3].ToString();
            txtschey.Text = dr[4].ToString();
            txtundcol.Text = dr[5].ToString();
            txtundsy.Text = dr[6].ToString();
            txtundey.Text = dr[7].ToString();
            txtpostcol.Text = dr[8].ToString();
            txtpostsy.Text=dr[9].ToString();
           txtpostey.Text=dr[10].ToString();

        }

        con.Close();
    }
    

    
    protected void update2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd;
        cmd = new SqlCommand("update edu_details set sch_name=@schname, sch_SY=@schsy, sch_EY=@schey ,und_col=@undcol, und_SY=@undsy, und_EY=@undey, post_col=@postcol , post_SY=@postsy,post_EY=@postey where userid=@id", con);
        cmd.Parameters.AddWithValue("@schname", txtschname.Text);
        cmd.Parameters.AddWithValue("@schsy", txtschsy.Text);
        cmd.Parameters.AddWithValue("@schey", txtschey.Text);
        cmd.Parameters.AddWithValue("@undcol", txtundcol.Text);
        cmd.Parameters.AddWithValue("@undsy", txtundsy.Text);
        cmd.Parameters.AddWithValue("@undey", txtundey.Text);
        cmd.Parameters.AddWithValue("@postcol", txtpostcol.Text); 
        cmd.Parameters.AddWithValue("@postsy", txtpostsy.Text);
        cmd.Parameters.AddWithValue("@postey", txtpostey.Text);


        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();



        cmd = new SqlCommand("select * from edu_details where userid=@id", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();


        if (dr.HasRows)
        {
            dr.Read();
            lbschname.Text = ifblank(dr[2].ToString());
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


        panel3.Visible = true;
        edit2.Visible = true;
        panel4.Visible = false;
        update2.Visible = false;
        cancel2.Visible = false;





    }
    protected void cancel2_Click(object sender, EventArgs e)
    {
        panel3.Visible = true;
        panel4.Visible = false;
        edit2.Visible = true;
        cancel2.Visible = false;
        update2.Visible = false;
    }
    protected void upload_Click(object sender, EventArgs e)
    {

        if (picupload.HasFile)
        {
            string fileExt = Path.GetExtension(picupload.FileName);

            if (fileExt == ".jpeg" || fileExt == ".jpg" || fileExt == ".gif" || fileExt == ".png")
            {
               
                
                    string filename = Path.GetFileName(picupload.PostedFile.FileName);
                    //Random r = new Random();
                    //int x = r.Next();
                    picupload.SaveAs(Server.MapPath("~/pic/") + filename);
                    img.ImageUrl = "pic/" + filename;
                   // lb.Text = "Upload status: File uploaded!";
                
                //catch (Exception ex)
                //{
                //    lb.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                //}
           
            
            }

            SqlCommand cmd = new SqlCommand("update prsnl_details set dp=@dp where userid=@id", con);
            cmd.Parameters.AddWithValue("@id",Convert.ToString(Session["user"]));
            cmd.Parameters.AddWithValue("@dp", img.ImageUrl);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                img.ImageUrl=dr[9].ToString();

            }
            con.Close();
            picupload.Visible = false;
            upload.Visible = false;
            picedit.Visible = true;


        }
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


    protected void picedit_Click(object sender, EventArgs e)
    {

        upload.Visible = true;
        picupload.Visible = true;
        picedit.Visible =false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (coverupload.HasFile)
        {
            string fileExt = Path.GetExtension(coverupload.FileName);

            if (fileExt == ".jpeg" || fileExt == ".jpg" || fileExt == ".gif" || fileExt == ".png")
            {


                string filename = Path.GetFileName(coverupload.PostedFile.FileName);
                //Random r = new Random();
                //int x = r.Next();
                coverupload.SaveAs(Server.MapPath("~/coverpic/") + filename);
                coverpic.ImageUrl = "coverpic/" + filename;
                // lb.Text = "Upload status: File uploaded!";

                //catch (Exception ex)
                //{
                //    lb.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                //}


            }

            SqlCommand cmd = new SqlCommand("update prsnl_details set coverpic=@dp where userid=@id", con);
            cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
            cmd.Parameters.AddWithValue("@dp", coverpic.ImageUrl);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                coverpic.ImageUrl = dr[10].ToString();

            }
            con.Close();

        }
    }
    
}