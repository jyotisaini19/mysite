using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class invitedtopic : System.Web.UI.Page
{

    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] != null)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
            if (!IsPostBack)
            {


              bindinvitetp();


            }
        }
        else
        {
            Response.Redirect("default.aspx");
        }
    }

    void bindinvitetp()
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select inv.topicid ,pr.dp ,pr.name, tp.title,tp.relatedpic , inv.invitedate from invitation inv left join create_topic tp on inv.topicid=tp.topicid left join prsnl_details pr on pr.userid=tp.userid where inv.fndId=@fndid", con);
        cmd.Parameters.AddWithValue("@fndid", Convert.ToString(Session["user"]));

        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

        dlinvitetopic.DataSource = ds;
        dlinvitetopic.DataBind();

    }





    protected void dlinvitetopic_ItemCommand(object source, DataListCommandEventArgs e)
    {
         if (e.CommandName == "reject") 
        {

            Label l1 = (Label)e.Item.FindControl("Label1");
            con.Open();

            SqlCommand cmd = new SqlCommand("delete from invitation where fndId=@fid and topicid=@tid", con);
            cmd.Parameters.AddWithValue("@fid", Convert.ToString(Session["user"]));
            cmd.Parameters.AddWithValue("@tid", l1.Text);
      

            cmd.ExecuteNonQuery();

            con.Close();
            bindinvitetp();
        
        
        }
    }
}