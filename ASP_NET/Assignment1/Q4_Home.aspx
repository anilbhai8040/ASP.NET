<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Q4_Home.aspx.cs" Inherits="Assignment1_Q4_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body runat="server" id="bodyTage">
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Assignment1/Q4_Home.aspx">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/Assignment1/Q4_About.aspx">About</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" 
            PostBackUrl="~/Assignment1/Q4_Contact.aspx">Contact</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
