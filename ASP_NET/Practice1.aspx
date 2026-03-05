<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Practice1.aspx.cs" Inherits="Practice1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <asp:ListBox ID="ListBox1" runat="server" 
            onselectedindexchanged="ListBox1_SelectedIndexChanged">
            <asp:ListItem Value="C++">Cpp</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem Selected="True">REACT</asp:ListItem>
            <asp:ListItem>NODE</asp:ListItem>
            <asp:ListItem>HTML</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
        </asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Remove" onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox2" runat="server">
        </asp:ListBox>
    
    </div>
    </form>

</body>
</html>
