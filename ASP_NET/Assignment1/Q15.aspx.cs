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

public partial class Assignment1_Q15 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int num = int.Parse(TextBox1.Text);
        
        int count = 0;
        for (int i = 1; i <= num; i++)
        {
            string name = i.ToString();
            int digit = name.Length;
            int rem, temp = i;
            double arm = 0;
            while (temp > 0)
            {
                rem = temp % 10;
                arm = Math.Pow(rem,digit) + arm;
                temp = temp / 10;
            }

            if (arm == i)
            {
                count++;
                if (num == i)
                {
                    Label3.Text = num + " is Armstrong number...";
                }
            }
            if (num == i && arm != i)
            {
                Label3.Text = num + " is Not Armstrong number...";
            }

            Label2.Text = count + " Total Armstrong from 1 to " + num;
        }
    }
}
