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

public partial class ArithmeticOperation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int no1 = int.Parse(TextBox1.Text);
        int no = int.Parse(TextBox2.Text);
        int ans;

        if (DropDownList1.SelectedItem.Text == "+")
        {
            ans = no1 + no;
            TextBox3.Text = ans.ToString();
        }
        else if (DropDownList1.SelectedItem.Text == "-")
        {
            ans = no1 - no;
            TextBox3.Text = ans.ToString();
        }
        else if (DropDownList1.SelectedItem.Text == "*")
        {
            ans = no1 * no;
            TextBox3.Text = ans.ToString();
        }
        else if (DropDownList1.SelectedItem.Text == "/")
        {
            ans = no1 / no;
            TextBox3.Text = ans.ToString();
        }
    }
}
