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

public partial class user_inbox : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Session["uanme"].ToString();
        if (Page.IsPostBack != true)
        {
            maildetails();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label Subject = new Label();
        Subject = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("sub");
        cmd = new SqlCommand("delete from confirmationdetails where subject ='" + Subject.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Record Is Deleted");
        maildetails();
        con.Close();
    }
    private void maildetails()
    {
        string s = Session["uanme"].ToString();
        da = new SqlDataAdapter("select mfrom,date,subject from confirmationdetails where cmailid='" + s + "'", con);
        ds = new DataSet();
        da.Fill(ds, "maildetails");
        GridView1.DataSource = ds.Tables["maildetails"];
        GridView1.DataBind();
    }
}

