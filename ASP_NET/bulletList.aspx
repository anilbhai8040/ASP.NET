<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bulletList.aspx.cs" Inherits="bulletList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Numbered" 
            style="margin-right: 424px" Width="151px">
            <asp:ListItem>Anil</asp:ListItem>
            <asp:ListItem>Kalpesh</asp:ListItem>
            <asp:ListItem>Dhruv</asp:ListItem>
            <asp:ListItem>Darshan</asp:ListItem>
            <asp:ListItem>Yash</asp:ListItem>
        </asp:BulletedList>
    
    </div>
    </form>
</body>
</html>
