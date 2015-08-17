using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Default12 : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
        if (!IsPostBack)
        {
            bindFriendsList();

        }
    }
    

    void bindFriendsList()
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select userid ,name , dp from prsnl_details where userid<>@userid and userid not in (SELECT  friendId FROM  friend WHERE     (userid = @userid)and (action='accepted' or action='waiting') UNION SELECT userid FROM    friend AS friend_1 WHERE     (friendId = @userid) and (action='accepted' or action='waiting'))", con);
        cmd.Parameters.AddWithValue("@userid", Convert.ToString(Session["user"]));
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        datalistfrnd.DataSource = ds;
        datalistfrnd.DataBind();




    }


   

    protected void datalistfrnd_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "request")
        {
           Label lbluserid = (Label)e.Item.FindControl("lbluserid");
            
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into friend values(@userid,@friendId,@action,@date)", con);

            cmd.Parameters.AddWithValue("@userid", Convert.ToString(Session["user"]));
            cmd.Parameters.AddWithValue("@friendId", lbluserid.Text);
            cmd.Parameters.AddWithValue("@action", "Waiting");
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            cmd.ExecuteNonQuery();
            con.Close();
            bindFriendsList();

        }
    }
    protected void imgbt_Click(object sender, ImageClickEventArgs e)
    {
         con.Open();

        SqlCommand cmd = new SqlCommand("select userid , name , dp from prsnl_details where userid<>@id and name LIKE '%" + txtsearch.Text+ "%' and userid not in (SELECT     friendId FROM  friend WHERE     (userid = @id)and action='accept' or action='waiting' UNION SELECT     userid FROM         friend AS friend_1 WHERE     (friendId = @id) and action='accept' or action='waiting' )", con);
        cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        datalistfrnd.DataSource = ds;
        datalistfrnd.DataBind();

    }
}