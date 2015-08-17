using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;


public partial class Default13 : System.Web.UI.Page
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

        SqlCommand cmd = new SqlCommand("select * from prsnl_details prsnl left join friend frd on prsnl.userid=frd.userid where frd.friendId=@fid and action='waiting'", con);
        cmd.Parameters.AddWithValue("@fid", Convert.ToString(Session["user"]));
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        dlfrndrequest.DataSource = ds;
        dlfrndrequest.DataBind();




    }




    protected void dlfrndrequest_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "accept")
        {
            //Label lbluserid = (Label)e.Item.FindControl("lbluserid");
            con.Open();

            SqlCommand cmd = new SqlCommand("update friend set action='accepted' where friendId=@fid", con);

            cmd.Parameters.AddWithValue("@fid", Convert.ToString(Session["user"]));
         
            cmd.ExecuteNonQuery();
            con.Close();
            bindFriendsList();

        }


        else if (e.CommandName == "reject") 
        {

            //Label l1 = (Label)e.Item.FindControl("Label1");
            con.Open();

            SqlCommand cmd = new SqlCommand("delete from friend where friendId=@fid", con);
            cmd.Parameters.AddWithValue("@fid", Convert.ToString(Session["user"]));

            cmd.ExecuteNonQuery();

            con.Close();
            bindFriendsList();
        
        
        }

    }
}