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

public partial class Assignment1_Q6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = "";
        if (RadioButton1.Checked)
        {
            Label2.Text = RadioButton1.Text;
        }
        if (RadioButton2.Checked)
        {
            Label2.Text = RadioButton2.Text;
        }
        if (RadioButton3.Checked)
        {
            Label2.Text = RadioButton3.Text;
        }
        if (RadioButton4.Checked)
        {
            Label2.Text = RadioButton4.Text;
        }
        if (RadioButton5.Checked)
        {
            Label2.Text = RadioButton5.Text;
        }
        if (RadioButton6.Checked)
        {
            Label2.Text = RadioButton6.Text;
        }

        if (Label2.Text == "") {
            Label2.Text = "Please select your fevorite color";
        }
        
    }
}
