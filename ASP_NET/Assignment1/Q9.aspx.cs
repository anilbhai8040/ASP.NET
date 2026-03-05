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

public partial class Assignment1_Q9 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = "";
        for (int i = 0; i < DropDownList1.Items.Count; i++) {
            if (DropDownList1.Items[i].Selected) {
                Label2.Text = DropDownList1.SelectedItem.Value.ToString()+" "+TextBox1.Text.ToString();
            }
        }
    }
}
