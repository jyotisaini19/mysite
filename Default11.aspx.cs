using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class Default11 : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
            if (!IsPostBack)
            {


                filldatalist();


            }
        }
        else
        {
            Response.Redirect("default.aspx");
        }
    }


    public void filldatalist()
    {
        con.Open();


        SqlCommand cmd;
        cmd = new SqlCommand("select *,(select count(commentid) from comment where topicid=tp.topicid) as c,(select count(likeid) from [like] where topicid=tp.topicid) as l from prsnl_details prsnl left join  create_topic tp on prsnl.userid=tp.userid where tp.access=@access ", con);
        //  cmd=new SqlCommand("SELECT description, SUBSTRING (description, 0, 50) as substring FROM create_topic",con);
        // object desp = cmd.ExecuteScalar();


        cmd.Parameters.AddWithValue("@access", "PUBLIC");

        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        ad.Fill(ds);

        con.Close();

       // CollectionPager1.DataSource = ds;

        
        CollectionPager1.DataSource = ds.Tables[0].DefaultView;
        //Let the Pager know what Control it needs to DataBind during the PreRender.

        CollectionPager1.BindToControl = DataList1; //UPDATED! 
        //The Control now takes the object you are binding to,
        // instead of the name of it (as a string) 

        //Set the DataSource of the Repeater to the PagedData coming from the Pager. 
        DataList1.DataSource = CollectionPager1.DataSourcePaged; 
        
        



    }


}