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

public partial class Practice1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ListBox2.Items.Add(ListBox1.SelectedItem.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ListBox2.Items.Count; i++)
        {
            /*
          if (ListBox2.Items[i].Text == ListBox1.SelectedItem.Text)
          {
              ListBox2.Items.RemoveAt(i);
          }
           */
          
             
            if (ListBox2.Items[i].Selected)
            {
                ListBox2.Items.RemoveAt(i);
            }
            
           
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}           
