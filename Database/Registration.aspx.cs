using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=G:\web image\BARAIYA_ANIL\Database\App_Data\myDatabase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = "";
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "INSERT INTO ragistration (name,email) values (@name,@email)";

        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@email", TextBox3.Text);

        con.Open();

        if (cmd.ExecuteNonQuery() > 0)
        {
            Label4.Text = "Data inserted successfully!";
        }
        else
        {
            Label4.Text = "Insert failed!";
        }

        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select * from ragistration", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}
