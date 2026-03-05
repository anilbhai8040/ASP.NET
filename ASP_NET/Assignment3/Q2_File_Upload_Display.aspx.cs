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

public partial class Assignment3_Q2_File_Upload_Display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("~/Assignment3/upload/" + FileUpload1.FileName);
        FileUpload1.PostedFile.SaveAs(path);

        Image1.Visible = true;
        Image1.ImageUrl = "~/Assignment3/upload/" + FileUpload1.FileName;
    }
}
