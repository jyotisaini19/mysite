using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default7 : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());
   
    
    
    }





    protected void pass_Click(object sender, EventArgs e)
    {    
       
        SqlCommand cmd;
        cmd = new SqlCommand("select * from login where userid='" +Convert.ToString(Session["user"]) + "'and password='" + old.Text + "'", con);

        con.Open();
        SqlDataReader dr =cmd.ExecuteReader();
       
        if(dr.HasRows)
         
              {
                 
                  con.Close();
            cmd = new SqlCommand("update login set password=@password  where userid=@id", con);
            cmd.Parameters.AddWithValue("@password", TextBox1.Text);
            cmd.Parameters.AddWithValue("@id", Convert.ToString(Session["user"]));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

                  }
       
        
        
        

    }
}