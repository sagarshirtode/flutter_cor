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

public partial class compny_sendconfirmation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    string s;
    string dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Session["mailid"].ToString();
        TextBox1.Text = s;
        string dt = DateTime.Now.ToString("dd-MMM-yy");
        TextBox4.Text = dt;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into confirmationdetails values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);

        cmd.ExecuteNonQuery();
        con.Close();
    }
}
