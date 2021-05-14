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

public partial class Consultance_addgjobs : System.Web.UI.Page
{
    SqlConnection con= new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
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
    protected void btn1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into postingdetails values('" + txtid.Text + "','" + txtname.Text + "','" + txtlocation.Text + "','"+txtdesc.Text+"','" + TextBox1.Text + "')", con);
        cmd.ExecuteNonQuery();
        getdetails();
       
        
    }
    private void getdetails()
    {
        da = new SqlDataAdapter("select * from postingdetails", con);
        ds = new DataSet();
        da.Fill(ds, "postingdetails");
        GridView1.DataSource = ds.Tables["postingdetails"];
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        getdetails();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label pif = new Label();
        pif = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("pif");

        cmd = new SqlCommand("delete from  postingdetails where pif='" + pif.Text + "'", con);
        con.Open();
        int res=cmd.ExecuteNonQuery();
        con.Close();
        if (res == 1)
        {
            
            getdetails();
        }
        
        

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label pif = new Label();
        TextBox job = new TextBox();
        TextBox com = new TextBox();
        TextBox loc = new TextBox();
        TextBox jdesc = new TextBox();
        TextBox mail = new TextBox();
        pif = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("pif1");
        job = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].FindControl("job1");
        com = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("com1");
        loc = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].FindControl("loc1");
        jdesc = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].FindControl("jdesc1");
        mail = (TextBox)GridView1.Rows[e.RowIndex].Cells[7].FindControl("mail1");

        
       
        cmd = new SqlCommand("update postingdetails set jobon='"+job.Text+"',com='" + com.Text + "',location='" + loc.Text + "',jdesc='" + jdesc.Text + "',mail='" + mail.Text + "' where jobon='"+pif.Text+"'", con);

        con.Open();
        int res = cmd.ExecuteNonQuery();
        con.Close();
        if (res == 1)
        {
            GridView1.EditIndex = -1;
            getdetails();
        }
        

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        getdetails();
    }
}
