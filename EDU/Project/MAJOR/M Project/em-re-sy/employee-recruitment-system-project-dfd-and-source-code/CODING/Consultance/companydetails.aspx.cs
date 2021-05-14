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

public partial class user_companydetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            companydetais();
        }
    }
    private void companydetais()
    {
        con.Open();
        da = new SqlDataAdapter("select * from companylogin", con);
        ds = new DataSet();
        da.Fill(ds, "companylogin");
        GridView1.DataSource = ds.Tables["companylogin"];
        GridView1.DataBind();
    }
}
