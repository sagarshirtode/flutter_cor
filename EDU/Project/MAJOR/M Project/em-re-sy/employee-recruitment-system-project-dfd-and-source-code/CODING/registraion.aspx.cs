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

public partial class registraion : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter dad;
    SqlCommand cmd, cmd1,cmd2,cmd3;
    string iname;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      Session["uname"]=txtusername.Text;
        string s=Session["uname"].ToString();
        Session["mailid"] = txtmailid.Text;
        string mail = Session["mailid"].ToString();
        con.Open();
        
        if (FileUpload1.HasFile == true)
        {
           
            string resume = this.FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~//resume//" + resume.ToString()));
            iname = "~/resume/" + resume.ToString();

            cmd = new SqlCommand("insert into userregistration values('" + txtusername.Text + "','" + txtpwd.Text + "','" + txtname.Text + "'," + txtphno.Text + ",'" + txtmailid.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtcolg.Text + "','" + txtper.Text + "','" + DropDownList2.SelectedItem.Text + "','" + txtskil.Text + "','" + iname + "')", con);
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Write("Welcome To JobConsultancy");
            }


            
          
                Response.Redirect("~/login.aspx");
            
        }
            

    }
}
