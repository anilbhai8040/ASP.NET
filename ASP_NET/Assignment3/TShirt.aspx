<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TShirt.aspx.cs" Inherits="Assignment3_TShirt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Width="300px">
            <DynamicHoverStyle BackColor="Aqua" ForeColor="#660066" />
            <StaticHoverStyle BackColor="Black" ForeColor="#00CC00" />
            <Items>
                <asp:MenuItem NavigateUrl="~/Assignment3/Q3_Menu_Control.aspx" Text="Home" 
                    Value="Home"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Assignment3/About.aspx" Text="About" Value="About">
                </asp:MenuItem>
                <asp:MenuItem Text="Men" Value="Men">
                    <asp:MenuItem NavigateUrl="~/Assignment3/Shirt.aspx" Text="Shirts" 
                        Value="Shirts"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Assignment3/TShirt.aspx" Text="T-Shirts" 
                        Value="T-Shirts"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Assignment3/Jeans.aspx" Text="Jeans" Value="Jeans">
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Women" Value="Women">
                    <asp:MenuItem NavigateUrl="~/Assignment3/Dreasses.aspx" Text="Dresses" 
                        Value="Dresses"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Assignment3/Tops.aspx" Text="Tops" Value="Tops">
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Assignment3/Handbags.aspx" Text="Handbags" 
                        Value="Handbags"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
    </form>
</body>
</html>
