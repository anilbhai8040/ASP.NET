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

public partial class Assignment2_Q5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text;
        string [] arr1 = name.Split(',');
        Label2.Text = "";
        int sum =0;
        for (int i = 0; i < arr1.Length; i++)
        {
            
            sum += int.Parse(arr1[i]);
        }
        Label2.Text = sum.ToString();
    }
}
