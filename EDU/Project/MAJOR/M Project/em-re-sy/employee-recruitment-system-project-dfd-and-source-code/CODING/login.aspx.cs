using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["uanme"] = TextBox1.Text;
       
        
        cmd = new SqlCommand("select count(*) from userregistration where uanme='" + TextBox1.Text + "'and pwd='" + TextBox2.Text + "'", con);
        con.Open();
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if(n>0)
       
        {
            Session.Add("n",TextBox1.Text);
            Response.Redirect("~/user/Profile.aspx");
       }
       else
       {
           Label1.Text = "invalid username and passsword";
       }
       con.Close();
    }
}
