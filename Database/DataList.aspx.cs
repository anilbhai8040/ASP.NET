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
public partial class DataList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=G:\web image\BARAIYA_ANIL\Database\App_Data\myDatabase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql = "INSERT INTO employee (name,salary,age,department) values (@name,@salary,@age,@department)";

        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@salary", TextBox3.Text);
        cmd.Parameters.AddWithValue("@age", TextBox4.Text);
        cmd.Parameters.AddWithValue("@department", TextBox5.Text);

        con.Open();

        if (cmd.ExecuteNonQuery() > 0)
        {
            Label6.Text = "Data inserted successfully!";
        }
        else
        {
            Label6.Text = "Insert failed!";
        }

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql = "select * from employee";

        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //string sql = "select * from employee where id < 4";
        string sql = "select TOP 3 * from employee order by salary desc";

        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string sql = "select TOP 1 * from employee order by salary desc";

        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox1.Text);
        string name = TextBox2.Text;
        int salary = int.Parse(TextBox3.Text);
        int age = int.Parse(TextBox4.Text);
        string department = TextBox5.Text;
        string sql = "update employee set name = @name, salary = @salary, age = @age, department = @department where id=@id";

        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@salary", salary);
        cmd.Parameters.AddWithValue("@age", age);
        cmd.Parameters.AddWithValue("@department", department);
        cmd.Parameters.AddWithValue("@id", id);
        con.Open();
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label6.Text = "Data updated successfully!";
        }
        else
        {
            Label6.Text = "Update failed!";
        }
        con.Close();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox1.Text);

        string sql = "delete employee where id=@id";

        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@id", id);

        con.Open();
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label6.Text = "Data deleted successfully!";
        }
        else
        {
            Label6.Text = "Delete failed!";
        }
        con.Close();
    }
}
