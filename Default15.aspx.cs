using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;



public partial class Default15 : System.Web.UI.Page
{
    SqlConnection con;



    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
        if (!IsPostBack)
        {
          //  unlike.Visible = false;
          //  like.Visible = true;
            lbtid.Text = Request.QueryString["tid"];
            bindtopic();
            checkUserLiked();
        }
    }
    void checkUserLiked()
    {
        string userid = Session["user"].ToString();
        con.Open();

        SqlCommand cmd = new SqlCommand("select likeid from [like]  where topicid=@tid and userid=@userid", con);
        cmd.Parameters.AddWithValue("@tid", lbtid.Text);
        cmd.Parameters.AddWithValue("@userid", userid);
        object ob = cmd.ExecuteScalar();
        if (ob == null || ob == DBNull.Value || ob.ToString() == "")
        {
            like.Visible = true;
            unlike.Visible = false;
        }
        else
        {
            unlike.Visible = true;
            like.Visible = false;
        }

    }

    void bindtopic()
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from create_topic where topicid=@tid and access='public'", con);
        cmd.Parameters.AddWithValue("@tid", lbtid.Text);
        
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        if (ds.Tables[0].Rows.Count > 0)
        {

            dlpost.DataSource = ds;
            dlpost.DataBind();
        }
        else
        {
            dlpost.DataSource = null;
            dlpost.DataBind();
            comt.Visible = false;
        }




    }


    //protected void dlpost_ItemCommand(object source, DataListCommandEventArgs e)
    //{
    //    if (e.CommandName == "like")
    //    {
    //        Label lbid = (Label)e.Item.FindControl("lbtid");
    //        con.Open();

    //        SqlCommand cmd = new SqlCommand("insert into [like] userid ,topicid,likedate values (@userid,@topicid,@likedate)", con);
            
    //        cmd.Parameters.AddWithValue("@userid", Convert.ToString(Session["user"]));
    //        cmd.Parameters.AddWithValue("@topicid", lbid.Text);
    //        cmd.Parameters.AddWithValue("@likedate", DateTime.Now);


    //        cmd.ExecuteNonQuery();

    //        con.Close();
            
    //        bindtopic();

    //    }
    //    else if (e.CommandName == "unlike")
    //    {

    //        Label lbid = (Label)e.Item.FindControl("lbtid");
    //        con.Open();

    //        SqlCommand cmd = new SqlCommand("delete from [like] where userid=@uid, topicid=@topicid,@likeid", con);

    //        cmd.Parameters.AddWithValue("@userid", Convert.ToString(Session["user"]));
    //        cmd.Parameters.AddWithValue("@topicid", lbtid.Text);
    //        cmd.Parameters.AddWithValue("@likedate", DateTime.Now);
           
            
    //        cmd.ExecuteNonQuery();

    //        con.Close();
            
    //        bindtopic();
        
        
        
    //    }


    //}
    protected void like_Click(object sender, ImageClickEventArgs e)
    {
        
        con.Open();

        SqlCommand cmd = new SqlCommand("insert into [like] ([userid] ,[topicid],[likedate]) values (@userid,@topicid,@likedate)", con);

        cmd.Parameters.AddWithValue("@userid", Convert.ToString(Session["user"]));
        cmd.Parameters.AddWithValue("@topicid", lbtid.Text);
        cmd.Parameters.AddWithValue("@likedate", DateTime.Now);


        cmd.ExecuteNonQuery();

        con.Close();
     //   unlike.Visible = true;
      //  like.Visible = false;
        bindtopic();
        checkUserLiked();
    }
    protected void unlike_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("delete from [like] where userid=@uid and topicid=@topicid", con);

        cmd.Parameters.AddWithValue("@uid", Convert.ToString(Session["user"]));
        cmd.Parameters.AddWithValue("@topicid", lbtid.Text);
       
        cmd.ExecuteNonQuery();

        con.Close();
        //unlike.Visible = false;
        //like.Visible = true;

        bindtopic();
        checkUserLiked();
    }
}