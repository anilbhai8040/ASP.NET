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

public partial class OddEven : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (int.Parse(TextBox1.Text) % 2 == 0)
        {
            Label1.Text = "Number is Even";
        }
        else
        {
            Label1.Text = "Number is Odd";
        }

    }
}
