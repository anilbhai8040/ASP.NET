using System;
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

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=G:\web image\BARAIYA_ANIL\Database\App_Data\myDatabase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender = "";
        string education = "";

        if (RadioButton1.Checked)
            gender = "Male";
        if (RadioButton2.Checked)
            gender = "Female";

        if (CheckBox1.Checked)
            education += "BCA ";
        if (CheckBox2.Checked)
            education += "MCA ";



        string sql = "INSERT INTO student (name,city,gender,education) values (@name,@city,@gender,@education)";

        SqlCommand cmd = new SqlCommand(sql,con);
        cmd.Parameters.AddWithValue("@name",TextBox1.Text);
        cmd.Parameters.AddWithValue("@city",TextBox2.Text);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Parameters.AddWithValue("@education", education);

        con.Open(); 
       
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label3.Text = "Data inserted successfully!";
        }
        else
        {
            Label3.Text = "Insert failed!";
        }

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox3.Text);
        string name = TextBox1.Text;
        string city = TextBox2.Text;

        string gender = "";
        string education = "";

        if (RadioButton1.Checked)
            gender = "Male";
        if (RadioButton2.Checked)
            gender = "Female";

        if (CheckBox1.Checked)
            education += "BCA ";
        if (CheckBox2.Checked)
            education += "MCA ";

        string sql = "update student set name = @name, city = @city, gender = @gender, education = @education where id=@id";

        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@city", city);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Parameters.AddWithValue("@education", education);
        cmd.Parameters.AddWithValue("@id", id);
        con.Open(); 
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label3.Text = "Data updated successfully!";
        }
        else
        {
            Label3.Text = "Update failed!";
        }
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select * from student", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox3.Text);

        string sql = "delete student where id=@id";

        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@id", id);

        con.Open();
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label3.Text = "Data deleted successfully!";
        }
        else
        {
            Label3.Text = "Delete failed!";
        }
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox3.Text);
        //string name = TextBox1.Text;
        //string city = TextBox2.Text;

        string gender = "";
        string education = "";

        if (RadioButton1.Checked)
            gender = "Male";
        if (RadioButton2.Checked)
            gender = "Female";

        if (CheckBox1.Checked)
            education += "BCA ";
        if (CheckBox2.Checked)
            education += "MCA ";

        GridView1.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select * from student where id = '"+id+"'",con);
        
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        
        
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text;
        GridView1.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select * from student where name like '%" + name + "%'", con);

        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}
