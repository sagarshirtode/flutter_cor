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

public partial class user_Profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da, da1, da2, da3;
    DataSet ds, ds1, ds2, ds3;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Session["uanme"].ToString();
        //string mail = Session["mailid"].ToString();
        con.Open();
        if (Page.IsPostBack != true)
        {
            getdetails();
            
        }

    }
    private void getdetails()
    {
        string s = Session["uanme"].ToString();
        da = new SqlDataAdapter("select * from userregistration where uanme='"+s+"'", con);
        ds = new DataSet();
        da.Fill(ds, "userregistration");
        FormView1.DataSource = ds.Tables["userregistration"];
        FormView1.DataBind();

        //con.Open();
        
      
       
    }
    
}
