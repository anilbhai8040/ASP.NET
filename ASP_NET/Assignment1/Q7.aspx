<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Q7.aspx.cs" Inherits="Assignment1_Q7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Course : "></asp:Label>
&nbsp;<asp:RadioButton ID="RadioButton1" runat="server" 
            GroupName="Course"
            Text="B.C.A." />
&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Course" 
            Text="B.B.A." />
        &nbsp;<asp:RadioButton ID="RadioButton3" runat="server" GroupName="Course" 
            Text="B.COM" />
&nbsp;<asp:RadioButton ID="RadioButton4" runat="server" GroupName="Course" 
            Text="B.A." />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Click" />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
