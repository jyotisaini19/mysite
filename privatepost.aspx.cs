using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;


public partial class privatepost : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
        if (!IsPostBack)
        {

            lbtid.Text = Request.QueryString["tid"];
            bindtopic();
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
        
        }




    }
















}