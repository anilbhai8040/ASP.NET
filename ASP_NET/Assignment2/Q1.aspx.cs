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

public partial class Assignment2_Q1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "") {
            Label2.Text = "Please Enter Number !!!";
            return;
        }
        int no = int.Parse(TextBox1.Text);

        int fact = 1;
        while( no > 0)
        {
            fact = fact * no;
            no--;
        }

        Label2.Text = "Factorial of "+TextBox1.Text+" is "+fact.ToString();
    }
}
