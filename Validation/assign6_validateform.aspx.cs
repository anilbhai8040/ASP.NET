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

public partial class assign6_validateform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        if(CheckBox4.Checked){
            args.IsValid = true;
            Label11.Text = "SuccessFully Register";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
             
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;

        if (RadioButton1.Checked || RadioButton2.Checked)
            args.IsValid = true;
    }
    protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;

        if (CheckBox1.Checked || CheckBox2.Checked || CheckBox3.Checked)
            args.IsValid = true;
    }
}
