<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" Theme="YourTheme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:Button ID="Button1" runat="server" Text="Button" BackColor="Lime" 
            BorderColor="#660066" ForeColor="#660066" Height="100px" Width="200px" 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" />
        <asp:Button ID="Button2" runat="server" Text="Button" SkinID="button4" />
        <asp:Button ID="Button3" runat="server" Text="Button" SkinID="button1" />
        <asp:Button ID="Button4" runat="server" Text="Button" BackColor="#660066" 
            BorderColor="Lime" ForeColor="Lime" Height="100px" Width="200px"
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" />
    
    </div>
    </form>
</body>
</html>
