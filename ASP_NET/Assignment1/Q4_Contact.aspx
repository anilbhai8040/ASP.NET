<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Q4_Contact.aspx.cs" Inherits="Assignment1_Q4_Contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Assignment1/Q4_Home.aspx">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/Assignment1/Q4_About.aspx">About</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" 
            PostBackUrl="~/Assignment1/Q4_Contact.aspx" onclick="LinkButton3_Click">Contact</asp:LinkButton>
    
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name : Anilbhai Baraiya"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" 
            Text="Address  :  Kaniyad , Botad ,Botad,Gujrat"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Mobile Number : 93167 xxxxx"></asp:Label>
    
    </div>
    </form>
</body>
</html>
