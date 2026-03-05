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

public partial class Assignment1_Q5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = "";
        if (CheckBox1.Checked)
        {
            Label2.Text += CheckBox1.Text + ", ";
        }
        if (CheckBox2.Checked)
        {
            Label2.Text += CheckBox2.Text + ", ";
        }
        if (CheckBox3.Checked)
        {
            Label2.Text += CheckBox3.Text + ", ";
        }

        if (Label2.Text == "") {
            Label2.Text += "Please checked at least one checkbox...";
        }
    }
}
