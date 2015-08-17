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

public partial class Control_commentbox : System.Web.UI.UserControl
{
    SqlConnection con;
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
        if (!IsPostBack)
        {
            lbtid.Text = Request.QueryString["tid"];
            bindComments();
        }
    }

    void bindComments()
    {
        con.Open();
        lbtid.Text = Request.QueryString["tid"];
        //string tid = Request.QueryString["tid"].ToString();
        SqlCommand cmd = new SqlCommand("select c.text  , c.createddate ,pr.dp,pr.name  from comment c left join prsnl_details pr on c.userid=pr.userid where c.topicid=@tid", con);
        cmd.Parameters.AddWithValue("@tid", lbtid.Text);

        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        dlComments.DataSource = ds;
        dlComments.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string tid = Request.QueryString["tid"].ToString();
        SqlCommand cmd;
        cmd = new SqlCommand("INSERT INTO [comment] ([userid] ,[topicid],[text],[createddate]) VALUES (@userid,@tpid,@textt,@date)", con);

        cmd.Parameters.AddWithValue("@userid", Convert.ToString(Session["user"]));
        cmd.Parameters.AddWithValue("@tpid", tid);
        cmd.Parameters.AddWithValue("@textt", TextBox4.Text);
        cmd.Parameters.AddWithValue("@date", DateTime.Now);


       // cmd.Parameters.AddWithValue("@text", "user");
        
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox4.Text = "";
        bindComments();


    }
}