<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ToolBox.aspx.cs" Inherits="ToolBox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#99CCFF" 
            BorderColor="#6600CC" ForeColor="Black"></asp:TextBox>
        single line<br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#99CCFF" 
            BorderColor="#6600CC" TextMode="MultiLine" Width="127px"></asp:TextBox>
        Multiline<br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" BackColor="#99CCFF" 
            BorderColor="#6600CC" TextMode="Password"></asp:TextBox>
        Password<br />
        <br />
        <asp:TextBox ID="TextBox4" runat="server" BackColor="#99CCFF" 
            BorderColor="#6600CC" MaxLength="10"></asp:TextBox>
        max length 10<br />
        <br />
        <asp:TextBox ID="TextBox5" runat="server" BackColor="#99CCFF" 
            BorderColor="#6600CC" Columns="20" TextMode="MultiLine" 
            Wrap="False"></asp:TextBox>
        textwrap false<br />
        <br />
        <asp:TextBox ID="TextBox6" runat="server" BackColor="#99CCFF" 
            BorderColor="#6600CC" ReadOnly="True" value="Anil" Columns="30" 
            ></asp:TextBox>
        read only<br />
        <br />&nbsp;<asp:TextBox ID="TextBox7" BackColor="#99CCFF" 
            BorderColor="#6600CC" runat="server" Columns="30"></asp:TextBox>
        width 30<br />
        <br />
        <asp:TextBox ID="TextBox8" runat="server" BackColor="#99CCFF" 
            BorderColor="#6600CC" Rows="3" TextMode="MultiLine"></asp:TextBox>
        rows 3</div>
    </form>
</body>
</html>
