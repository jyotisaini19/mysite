using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;


public partial class Default14 : System.Web.UI.Page
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

        SqlCommand cmd = new SqlCommand("select userid,dp,name from prsnl_details where userid in( SELECT friendId from friend where userid=@uid and action='accepted' UNION select userid from friend where friendId=@fid and action='accepted')", con);
        cmd.Parameters.AddWithValue("@fid", Convert.ToString(Session["user"]));
        cmd.Parameters.AddWithValue("@uid", Convert.ToString(Session["user"]));
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        dlmyfrnd.DataSource = ds;
        dlmyfrnd.DataBind();




    }




    protected void dlmyfrnd_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "unfriend")
        
        {
            Label lbid = (Label)e.Item.FindControl("lbid");
            con.Open();

            SqlCommand cmd = new SqlCommand("delete from friend where (friendId=@fid and userid=@uid) or (friendId=@uid and userid=@fid)", con);
            cmd.Parameters.AddWithValue("@fid", lbid.Text);
            cmd.Parameters.AddWithValue("@uid", Convert.ToString(Session["user"]));
           

            cmd.ExecuteNonQuery();

            con.Close();
            bindFriendsList();
        
        }
    }
}