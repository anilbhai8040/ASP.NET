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

public partial class FileUpload : System.Web  .UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ServerMapPath = Server.MapPath("~/UploadedFile/"+FileUpload1.FileName);
        FileUpload1.PostedFile.SaveAs(ServerMapPath);

        Image1.Visible = true;
        Image1.ImageUrl = ("~/UploadedFile/" + FileUpload1.FileName);
    }
}
