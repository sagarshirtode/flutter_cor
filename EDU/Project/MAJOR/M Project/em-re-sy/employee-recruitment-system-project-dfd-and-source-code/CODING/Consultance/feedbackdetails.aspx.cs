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

public partial class Consultance_feedbackdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack!=true)
        {
            getfeedback();
        }

    }
    private void getfeedback()
    {
        da = new SqlDataAdapter("select * from userfeedback", con);
        con.Open();
        ds = new DataSet();
        da.Fill(ds, "userfeedback");
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }
}
