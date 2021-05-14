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

public partial class compny_inbox : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Session["mailid"].ToString();
        con.Open();

        if (Page.IsPostBack != true)
        {
            maildetails();
        }
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label subject = new Label();
        subject = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("sub");
                cmd = new SqlCommand("delete from maildetails where subject ='" + subject.Text+ "'", con);
        cmd.ExecuteNonQuery();
        maildetails();
        Response.Write("Record Is Deleted");
        con.Close();
        
    }
    private void maildetails()
    {
        string s = Session["mailid"].ToString();
        da = new SqlDataAdapter("select cmailid,date,subject from maildetails where mailid='" + s + "'", con);
        ds = new DataSet();
        da.Fill(ds, "maildetails");
        GridView1.DataSource = ds.Tables["maildetails"];
        GridView1.DataBind();

    }
}
