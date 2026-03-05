<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkbox.aspx.cs" Inherits="checkbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Course :"></asp:Label>
&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Text="java" />
&nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="cpp" />
&nbsp;<asp:CheckBox ID="CheckBox3" runat="server" Text="php" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
