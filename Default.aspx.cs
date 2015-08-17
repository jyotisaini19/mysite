using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con; 
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ToString());

    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
       
       

            SqlCommand cmd ;
        cmd= new SqlCommand("select userid from login where username='" +txtname.Text + "'and password='" +txtpass.Text + "'", con);

            con.Open();
            object id = cmd.ExecuteScalar();
            con.Close();
            if (id == null || id == DBNull.Value || id.ToString() == "")
            {
                
            }
            else
            {
                Session["user"] = id.ToString();
                
                Response.Redirect("Default11.aspx");
            }
           





       
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd;
         cmd = new SqlCommand("INSERT INTO [login] ([username] ,[password],[role] ,[status],[logindate]) VALUES (@username,@pass,@role,@status,@date)", con);
      
        cmd.Parameters.AddWithValue("@username", textusername.Text);
        cmd.Parameters.AddWithValue("@pass",textpass.Text );
        

        cmd.Parameters.AddWithValue("@role", "user");
        cmd.Parameters.AddWithValue("@status", "inactive");
        cmd.Parameters.AddWithValue("@date", DateTime.Now);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        cmd = new SqlCommand("select userid from login where username='" + textusername.Text + "'and password='" + textpass.Text + "'", con);
        con.Open();
        object id = cmd.ExecuteScalar();
        con.Close();
        Session["id"] = id.ToString();
      
        
     cmd = new SqlCommand("INSERT INTO[prsnl_details] ([userid],[name],[gender],[mobile],[email],[address],[state],[city],[dp], [coverpic]) VALUES(@id,@name,@gen,@mobile,@email,@address,@state,@city,@dp,@pic)", con);
        cmd.Parameters.AddWithValue("@id",id.ToString());
        cmd.Parameters.AddWithValue("@name", textname.Text);
        cmd.Parameters.AddWithValue("@gen", textgender.Text);
        cmd.Parameters.AddWithValue("@mobile", "");
        cmd.Parameters.AddWithValue("@email", "");
        cmd.Parameters.AddWithValue("@address", "");
        cmd.Parameters.AddWithValue("@state", "");
        cmd.Parameters.AddWithValue("@city", "");
        cmd.Parameters.AddWithValue("@dp", "pic/default.png");
        cmd.Parameters.AddWithValue("@pic", "coverpic/default-cover.jpg");
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        cmd= new SqlCommand("INSERT INTO[edu_details] ([userid],[sch_name],[sch_SY],[sch_EY],[und_col],[und_SY],[und_EY],[post_col],[post_SY],[post_EY]) VALUES(@id,@schname,@schsy,@schey,@undcol,@undsy,@undey,@postcol,@postsy,@postey)", con);
        cmd.Parameters.AddWithValue("@id",id.ToString());
        cmd.Parameters.AddWithValue("@schname", "Add Here");
        cmd.Parameters.AddWithValue("@schsy", "Add Here");
        cmd.Parameters.AddWithValue("@schey", "Add Here");
        cmd.Parameters.AddWithValue("@undcol", "Add Here");
        cmd.Parameters.AddWithValue("@undsy", "Add Here");
        cmd.Parameters.AddWithValue("@undey", "Add Here");
        cmd.Parameters.AddWithValue("@postcol", "Add Here");
        cmd.Parameters.AddWithValue("@postsy", "Add Here");
        cmd.Parameters.AddWithValue("@postey", "Add Here");
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        
    }

    
}
