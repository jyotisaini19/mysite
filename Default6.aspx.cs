using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Default6 : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
        if (!IsPostBack)

        {
           

        }

    }

    void bindFriendsList()
    {
        con.Open();

        SqlCommand cmd=new SqlCommand("select userid from login where userid<>@userid and userid not in (SELECT     friendId FROM         friend WHERE     (userid = @userid)and action='accept' or action='waiting' UNION SELECT     userid FROM         friend AS friend_1 WHERE     (friendId = @userid) and action='accept' )",con);
        cmd.Parameters.AddWithValue("@userid", txtuserid.Text);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        dlFriendInviteList.DataSource = ds;
        dlFriendInviteList.DataBind();

       


    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        bindFriendsList();
    }
    protected void dlFriendInviteList_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Request")
        {
            Label lbluserid = (Label)e.Item.FindControl("lbluserid");
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into friend values(@userid,@friendid,@action,@date)", con);

            cmd.Parameters.AddWithValue("@userid", txtuserid.Text);
            cmd.Parameters.AddWithValue("@friendid", lbluserid.Text);
            cmd.Parameters.AddWithValue("@action", "Waiting");
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            cmd.ExecuteNonQuery();
            con.Close();
            bindFriendsList();

        }
    }
}