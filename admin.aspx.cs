using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class admin : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
        binduser();

    }

    void binduser()
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select l.userid,pr.dp,pr.name,l.username,l.logindate from login l left join prsnl_details pr on l.userid=pr.userid where l.status='inactive'", con);
        // cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));

        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        dladmin.DataSource = ds;
        dladmin.DataBind();

    }





    protected void dladmin_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "a")
        {

            Label l1 = (Label)e.Item.FindControl("lbid");
            con.Open();

            SqlCommand cmd = new SqlCommand("update [login] set status='active' where userid=@id ", con);
            //cmd.Parameters.AddWithValue("@fid", Convert.ToString(Session["user"]));
            cmd.Parameters.AddWithValue("@id", l1.Text);


            cmd.ExecuteNonQuery();

            con.Close();
            binduser();

        }

        else if (e.CommandName == "r")
        {




        }
    }
}