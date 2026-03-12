<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Name      :      "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="City     :    "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Id   :   "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Id Must Be Number" 
            ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Gender   :"></asp:Label>
&nbsp;<asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" 
            Text="Male" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" 
            Text="Female" />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Education   :"></asp:Label>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="BCA" />
&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" Text="MCA" />
        <br />
        <br />
        &nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Insert" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="Display" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Search Id" 
            onclick="Button5_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
            Text="Search Any Name" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
    
        <br />
        &nbsp;<br />
        <asp:GridView ID="GridView1" runat="server" Width="500px">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
