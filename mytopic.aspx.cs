using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.IO;


public partial class mytopic : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        
            if (Session["user"] != null)
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
            lbtid.Text = Request.QueryString["tid"];
            bindtopic();

            // }
            if (!IsPostBack)
            {
                pnlupdate.Visible = false;
                btcancel.Visible = false;
                btupdate.Visible = false;
                bindFriendsList();
            }

        }

        else
        {
            Response.Redirect("default.aspx");
        }
    }


    void bindFriendsList()
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select userid,dp,name from prsnl_details where userid in( SELECT friendId from friend where userid=@uid and action='accepted' UNION select userid from friend where friendId=@fid) and userid not in(select fndId from invitation where topicid=@tid)", con);
        cmd.Parameters.AddWithValue("@fid", Convert.ToString(Session["user"]));
        cmd.Parameters.AddWithValue("@uid", Convert.ToString(Session["user"]));
        cmd.Parameters.AddWithValue("@tid", lbtid.Text);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        dlinvite.DataSource = ds;
        dlinvite.DataBind();




    }




    void bindtopic()
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from create_topic where topicid=@tid", con);
        cmd.Parameters.AddWithValue("@tid", lbtid.Text);

        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        dlmypost.DataSource = ds;
        dlmypost.DataBind();




    }

    void bindupdatetp()
    {
        SqlCommand cmd = new SqlCommand("select * from create_topic where topicid=@tid", con);
        cmd.Parameters.AddWithValue("@tid", lbtid.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();


        if (dr.HasRows)
        {
            dr.Read();
            txttitle.Text = dr["title"].ToString();
            img.ImageUrl = dr["relatedpic"].ToString();

            txtarea.InnerText = dr["description"].ToString();

        }
        con.Close();

        //con.Open();
        //SqlDataAdapter ad = new SqlDataAdapter(cmd);

        //DataSet ds = new DataSet();
        //ad.Fill(ds);

        //con.Close();

        //dlupdatetp.DataSource = ds;
        //dlupdatetp.DataBind();



    }





    protected void btedit_Click(object sender, EventArgs e)
    {

        pnltopic.Visible = false;
        pnlupdate.Visible = true;
        btupdate.Visible = true;
        btedit.Visible = false;
        btcancel.Visible = true;
        bindupdatetp();

    }
    protected void btupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update create_topic set title=@title , description=@desp where topicid=@id", con);
        cmd.Parameters.AddWithValue("@id", lbtid.Text);
        cmd.Parameters.AddWithValue("@title", txttitle.Text);
        cmd.Parameters.AddWithValue("@desp", txtarea.InnerText);

        cmd.ExecuteNonQuery();

        con.Close();
       bindupdatetp();
       bindtopic();
        pnlupdate.Visible = false;
        pnltopic.Visible = true;
        btcancel.Visible = false;
        btedit.Visible = true;
        btupdate.Visible = false;

    }
    protected void btcancel_Click(object sender, EventArgs e)
    {
        pnltopic.Visible = true;
        pnlupdate.Visible = false;
        btupdate.Visible = false;
        btedit.Visible = true;
        btcancel.Visible = false;


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
                picupload.SaveAs(Server.MapPath("~/file/") + filename);
                img.ImageUrl = "file/" + filename;
                // lb.Text = "Upload status: File uploaded!";

                //catch (Exception ex)
                //{
                //    lb.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                //}


            }
            con.Open();
            SqlCommand cmd = new SqlCommand("update create_topic set relatedpic=@dp where topicid=@id", con);
            cmd.Parameters.AddWithValue("@id", lbtid.Text);
            cmd.Parameters.AddWithValue("@dp", img.ImageUrl);

            cmd.ExecuteNonQuery();

            con.Close();
        }
    }
    protected void dlinvite_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "invite")
        {
            Label lbluserid = (Label)e.Item.FindControl("lbluserid");
            
            
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into invitation values(@userid,@friendid,@date,@topicid)", con);

            cmd.Parameters.AddWithValue("@userid", Convert.ToString(Session["user"]));
            cmd.Parameters.AddWithValue("@friendid", lbluserid.Text);
          
      
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            cmd.Parameters.AddWithValue("@topicid", lbtid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            bindFriendsList();

        
        
        
        
        
        }
    }
}