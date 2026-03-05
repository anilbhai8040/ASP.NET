<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div>
    
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    <asp:TextBox ID="TextBox1" runat="server" Width="200px" 
        ontextchanged="TextBox1_TextChanged" style="margin-left: 9px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="margin-left: 52px" Text="Button" Width="97px" />
    </div>
    </form>
</body>
</html>
