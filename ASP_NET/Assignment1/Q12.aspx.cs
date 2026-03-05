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

public partial class Assignment1_Q12 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        float Price = float.Parse(TextBox1.Text);
        float Rate = float.Parse(TextBox2.Text);
        float Year = float.Parse(TextBox3.Text);
        float Interest;
        Interest = Price * Rate * Year / 100;
        Label4.Text = Interest.ToString();
    }
}
