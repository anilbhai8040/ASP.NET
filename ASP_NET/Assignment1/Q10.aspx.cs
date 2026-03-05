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

public partial class Assignment1_Q10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ListBox1.Items.Count; i++)
        {
            if (ListBox1.Items[i].Selected)
            {
                bool exists = false;
                string name = ListBox1.Items[i].Text;

                for (int j = 0; j < ListBox2.Items.Count; j++)
                {
                    if (ListBox2.Items[j].Text == name)
                    {
                        exists = true;
                        break;
                    }
                }

                if (!exists)
                {
                    ListBox2.Items.Add(name);
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ListBox2.Items.Count; i++)
        {
            if (ListBox2.Items[i].Selected)
            {
                ListBox2.Items.RemoveAt(i);
            }
        }
    }
}
