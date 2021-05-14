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

public partial class Consultance_Jobdetatails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            getdetails();
        }

    }
    private void getdetails()
    {
        da = new SqlDataAdapter("select* from companyjobdetails", con);
        ds = new DataSet();
        da.Fill(ds, "companyjobdetails");
        GridView1.DataSource = ds.Tables["companyjobdetails"];
        GridView1.DataBind();
    }
}
