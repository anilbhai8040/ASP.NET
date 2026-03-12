<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="ID     :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
      <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator 
    ID="RequiredFieldValidator1" 
    runat="server" 
    ControlToValidate="TextBox2"
    ErrorMessage="Name is required"
    ForeColor="Red"
    ValidationGroup="InsertGroup" Display="Dynamic"></asp:RequiredFieldValidator>

<br /><br />

<asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator 
    ID="RequiredFieldValidator2" 
    runat="server" 
    ControlToValidate="TextBox3"
    ErrorMessage="Email is required"
    ForeColor="Red"
    ValidationGroup="InsertGroup" Display="Dynamic"></asp:RequiredFieldValidator>

&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" Display="Dynamic" 
            ErrorMessage="Email Must Be Valid" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="InsertGroup"></asp:RegularExpressionValidator>

<br /><br />

&nbsp;&nbsp;&nbsp;&nbsp;

<asp:Button 
    ID="Button1" 
    runat="server" 
    Text="Insert" 
    OnClick="Button1_Click"
    ValidationGroup="InsertGroup" />

&nbsp;&nbsp;&nbsp;&nbsp;

<asp:Button 
    ID="Button2" 
    runat="server" 
    Text="Display" 
    OnClick="Button2_Click"
    CausesValidation="false" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
