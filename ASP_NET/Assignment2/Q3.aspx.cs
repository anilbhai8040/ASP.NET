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

public partial class Assignment2_Q3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "") {
            Label2.Text = "Plese Enter any Number !!!";
            return;
        }

        int no = int.Parse(TextBox1.Text);

        Label2.Text = "";
        for (int i = 1; i <= no; i++) {
            for (int j = 1; j <= i; j++) {
                Label2.Text += "* ";
            }
            Label2.Text += "<br>";
        }
    }
}
