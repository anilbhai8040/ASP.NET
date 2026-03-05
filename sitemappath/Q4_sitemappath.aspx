<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Q4_sitemappath.aspx.cs" Inherits="TreeView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" ForeColor="#FF0066">
        </asp:SiteMapPath>
        <br />
        <br />
        <asp:TreeView ID="TreeView1" runat="server" BackColor="#99FF99" 
            ForeColor="#FF0066">
            <Nodes>
                <asp:TreeNode NavigateUrl="~/Q4_sitemappath.aspx" Text="Electronics" 
                    Value="Course">
                    <asp:TreeNode NavigateUrl="~/BCA.aspx" Text="Mobiles" Value="BCA">
                        <asp:TreeNode NavigateUrl="~/Samsung.aspx" Text="Samsung" Value="Samsung">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Vivo.aspx" Text="Vivo" Value="Vivo"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/MCA.aspx" Text="Laptops" Value="MCA">
                        <asp:TreeNode NavigateUrl="~/Dell.aspx" Text="Dell" Value="Dell"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Lenovo.aspx" Text="Lenovo" Value="Lenovo">
                        </asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    &nbsp;</div>
    </form>
</body>
</html>
