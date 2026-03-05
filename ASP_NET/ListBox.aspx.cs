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

public partial class ListBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = ListBox1.SelectedItem.Text;
        Label2.Text = ListBox1.SelectedValue;
        Label3.Text = ListBox1.SelectedIndex.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";
        for (int i = 0; i < ListBox2.Items.Count; i++)
        {
            if (ListBox2.Items[i].Selected)
            {
                Label1.Text += ListBox2.Items[i].Text + " , ";
                Label2.Text += ListBox2.Items[i].Value + " , ";
                Label3.Text += i + " , ";
            }
        }
    }
}
