<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListBox.aspx.cs" Inherits="ListBox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Single Selection&nbsp; :&nbsp;
    
        <asp:ListBox ID="ListBox1" runat="server"  Rows="5">
            <asp:ListItem Value="C++">Cpp</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem Selected="True">REACT</asp:ListItem>
            <asp:ListItem>NODE</asp:ListItem>
            <asp:ListItem>HTML</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
        </asp:ListBox>
         &nbsp;&nbsp;&nbsp; Multiple Selection&nbsp; :&nbsp;&nbsp;
         <asp:ListBox ID="ListBox2" runat="server"  Rows="5" 
            SelectionMode="Multiple">
            <asp:ListItem Value="C++">Cpp</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem Selected="True">REACT</asp:ListItem>
            <asp:ListItem>NODE</asp:ListItem>
            <asp:ListItem>HTML</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
        </asp:ListBox>
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
