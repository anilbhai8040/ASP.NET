<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" 
            Text="Male" />
&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" 
            Text="Female" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Display" 
            onclick="Button2_Click" />
&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Search" onclick="Button3_Click" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="White"
                      BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
                      CellPadding="3" CellSpacing="5" GridLines="Vertical" Width="500px">

                 <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <AlternatingItemStyle BackColor="#DCDCDC" />
                 <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                 <SeparatorStyle HorizontalAlign="Justify" Width="30px" />
                 <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <table width="100%">
                            <tr style="font-weight:bold;">
                                 <td width="60">ID</td>
                                 <td width="120" style="padding-left:20px;">Name</td>
                                 <td width="100" style="padding-left:20px;">Gender</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                 <ItemTemplate>                                
                     <table width="100%">             
                      <tr>
                         <td width="60"><%# Eval("id") %></td>
                         <td width="120" style="padding-left:20px;"><%# Eval("name") %></td>
                         <td width="100" style="padding-left:20px;"><%# Eval("gender") %></td>
                      </tr>
                    </table>
                  </ItemTemplate>
                 </asp:DataList>
    
    </div>
    </form>
</body>
</html>
