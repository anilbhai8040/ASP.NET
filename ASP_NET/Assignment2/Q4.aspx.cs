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

public partial class Assignment2_Q4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text;
        string [] arr = name.Split(',');
        Label2.Text = "";

        for(int i = 0; i<arr.Length; i++){
            for(int j = i+1; j<arr.Length; j++){
                if(arr[i] == arr[j]){
                    Label2.Text += "The Duplicate value is : "+arr[i]+"<br>";
                }
            }
        }
    }
}
