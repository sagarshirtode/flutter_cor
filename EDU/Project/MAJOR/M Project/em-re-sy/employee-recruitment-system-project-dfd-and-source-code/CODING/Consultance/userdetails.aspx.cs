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

public partial class Consultance_userdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            userdetails();
        }

    }
    private void userdetails()
    {

        da = new SqlDataAdapter("select name,cno,mailid from userregistration", con);
        con.Open();
        ds = new DataSet();
        da.Fill(ds, "userregistration");
        GridView1.DataSource = ds.Tables["userregistration"];
        GridView1.DataBind();
}
}
