<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Q5.aspx.cs" Inherits="Assignment1_Q5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Language :  "></asp:Label>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Redux Toolkit" />
&nbsp;
    <asp:CheckBox ID="CheckBox2" runat="server" Text="React" />
&nbsp;&nbsp;
    <asp:CheckBox ID="CheckBox3" runat="server" Text="Tailwind" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Click me" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;<div>
    
    </div>
    </form>
</body>
</html>
