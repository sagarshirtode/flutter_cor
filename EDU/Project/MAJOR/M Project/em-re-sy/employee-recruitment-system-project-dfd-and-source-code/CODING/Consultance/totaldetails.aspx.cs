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
using System.IO;

public partial class Consultance_Sending : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            if (Page.IsPostBack != true)
            {
                string name = Request.QueryString["name"].ToString();
                getuserdetails(name);
            }
        }
    }
    private void getuserdetails( string name)
    {
        da = new SqlDataAdapter("select cno,mailid,quali,industry,resume from userregistration where name='" + name.ToString() + "'", con);
        ds = new DataSet();
        da.Fill(ds, "userregistration");
        if (ds.Tables.Count > 0 && ds.Tables["userregistration"].Rows.Count > 0)
        {
            
            Label1.Text = ds.Tables["userregistration"].Rows[0][0].ToString();
            Label2.Text = ds.Tables["userregistration"].Rows[0][1].ToString();
            Label3.Text = ds.Tables["userregistration"].Rows[0][2].ToString();
            Label4.Text = ds.Tables["userregistration"].Rows[0][3].ToString();

            //Label5.Text = ds.Tables["userregistration"].Rows[0][4].ToString();

            Label6.Text = ds.Tables["userregistration"].Rows[0][4].ToString();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Label6.Text != "")
        {
            string filename = Path.GetFileName(Label6.Text);
            Response.AppendHeader("Content-Disposition", "resume;FileName=" +filename);
            Response.ContentType = "text/plain";
            Response.WriteFile("~/resume/"+filename);
            Response.End();
        }
    }
}
