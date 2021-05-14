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

public partial class company : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["mailid"] = TextBox1.Text;

        cmd = new SqlCommand("select count(*) from companylogin where mailid='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con);
        con.Open();
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n > 0)
        {
            Session.Add("n", TextBox1.Text);
            Response.Redirect("~/compny/inbox.aspx");
        }
        else
        {
            Label1.Text = "invalid username and passsword";
        }
        con.Close();
    }
}
