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

public partial class Assignment2_Q2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Red") {
            Label2.Text = "please stop your car";
        }
        if (DropDownList1.SelectedValue == "Yellow")
        {
            Label2.Text = "Ready to go";
        }
        if (DropDownList1.SelectedValue == "Green")
        {
            Label2.Text = "Go and enjoy your ride";
        }

    }
}
