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

public partial class Assignment1_Q14 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int num = int.Parse(TextBox1.Text);
        int count = 0;
        for (int i = 1; i <= num; i++) {
            int rem, rev = 0, temp = i;
            while (temp > 0) {
                rem = temp % 10;
                rev = rev * 10 + rem;
                temp = temp / 10;
            }

            if (rev == i)
            {
                count++;
                if (num == i)
                {
                    Label3.Text = num + " is palindrome number...";
                }   
            }
            if (num == i && rev != i) {
                Label3.Text = num + " is Not palindrome number...";
            }

            Label2.Text = count + " Total Palindrome from 1 to " + num; 
        }
    }
}
