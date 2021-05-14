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
    SqlCommand cmd;
    SqlDataAdapter da;
    string iname;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("cmailid", TextBox2.Text);
        
string dt = DateTime.Now.ToString("dd-MMM-yy");
       TextBox4.Text = dt;
       if (Request.QueryString["jobon"] != null && Request.QueryString["mail"] != null)
       {
           TextBox3.Text = Request.QueryString["jobon"].ToString();
           TextBox1.Text = Request.QueryString["mail"].ToString();
       }
       if (FileUpload1.HasFile == false)
       {

           string resume = this.FileUpload1.FileName;
           FileUpload1.SaveAs(Server.MapPath("~//resume//" + resume.ToString()));
           iname = "~/resume/" + resume.ToString();
           
           
       }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {

            string resume = this.FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~//resume//" + resume.ToString()));
            iname = "~/resume/" + resume.ToString();



            cmd = new SqlCommand("insert into maildetails values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + iname + "','" + TextBox5.Text + "')", con);
            con.Open();
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Write("Inserted");
            }
        }

    }
}
