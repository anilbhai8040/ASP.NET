<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Button.aspx.cs" Inherits="Button" %>

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
    
        <br />
        
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Hide" 
            Width="80px" />
    &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Display" Width="80px" 
            onclick="Button1_Click" /><br /><br /><br />
            <asp:Image ID="Image1" runat="server" Height="202px" style="margin-left: 0px" 
            Width="221px" Visible="False" />
        <br />
        <br />
        <br />
    
    </div>
    </form>
    </body>
</html>
