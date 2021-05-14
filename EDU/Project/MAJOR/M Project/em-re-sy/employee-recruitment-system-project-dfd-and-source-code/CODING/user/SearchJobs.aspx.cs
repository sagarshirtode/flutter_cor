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

public partial class user_SearchJobs : System.Web.UI.Page
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
            jobdetails();

        }
    }

    private void getdetails()
    {
        da = new SqlDataAdapter("select * from postingdetails", con);
        ds = new DataSet();
        da.Fill(ds, "postingdetails");
        GridView1.DataSource = ds.Tables["postingdetails"];
        GridView1.DataBind();
    }

    private void jobdetails()
    {
        cmd = new SqlCommand("select distinct jobon from postingdetails", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "postindetails");
        if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds.Tables[0].DefaultView;
            DropDownList1.DataTextField = "jobon";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "----select----");
            DropDownList1.Dispose();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from postingdetails where jobon='" + DropDownList1.SelectedItem+ "'", con);
        con.Open();
        ds = new DataSet();
        da.Fill(ds, "postingdetails");
        GridView1.DataSource = ds.Tables["postingdetails"];
        GridView1.DataBind();        
    }
}
