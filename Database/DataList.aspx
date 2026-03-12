<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataList.aspx.cs" Inherits="DataList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Salary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Insert" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Select" onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Max" onclick="Button3_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Top3" onclick="Button4_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Update" onclick="Button5_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button6" runat="server" Text="Delete" onclick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="2">

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
                                 <td width="100" style="padding-left:20px;">Salary</td>
                                 <td width="60" style="padding-left:20px;">Age</td>
                                 <td width="120" style="padding-left:20px;">Department</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                 <ItemTemplate>                                
                     <table width="100%">             
                      <tr>
                         <td width="60"><%# Eval("id") %></td>
                         <td width="120" style="padding-left:20px;"><%# Eval("name") %></td>
                         <td width="100" style="padding-left:20px;"><%# Eval("salary") %></td>
                         <td width="60" style="padding-left:20px;"><%# Eval("age") %></td>
                         <td width="120" style="padding-left:20px;"><%# Eval("department") %></td>
                      </tr>
                    </table>
                  </ItemTemplate>
                 </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="2">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>    
    </div>
    </form>
</body>
</html>
