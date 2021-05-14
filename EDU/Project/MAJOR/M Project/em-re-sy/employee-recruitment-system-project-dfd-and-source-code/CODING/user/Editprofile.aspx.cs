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

public partial class user_Editprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
    string s = Session["uanme"].ToString();
    con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         string s = Session["uanme"].ToString();
         cmd = new SqlCommand("update userregistration set pwd='" + TextBox2.Text + "' where uanme='" + s + "' and pwd='" + TextBox1.Text + "'", con);
         cmd.ExecuteNonQuery();

    }
}
