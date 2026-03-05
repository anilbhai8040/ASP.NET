
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menuControl.aspx.cs" Inherits="menuControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" Height="28px" Orientation="Horizontal" 
            StaticSubMenuIndent="30px" Width="250px">
            <Items>
                <asp:MenuItem Text="FY" Value="FY">
                    <asp:MenuItem Text="C" Value="C"></asp:MenuItem>
                    <asp:MenuItem Text="WebDesign" Value="WebDesign"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="SY" Value="SY">
                    <asp:MenuItem Text="Cpp" Value="Cpp"></asp:MenuItem>
                    <asp:MenuItem Text="DFS" Value="DFS"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="TY" Value="TY">
                    <asp:MenuItem Text="ASP" Value="ASP"></asp:MenuItem>
                    <asp:MenuItem Text="JAVA" Value="JAVA"></asp:MenuItem>
                    <asp:MenuItem Text="PHP" Value="PHP"></asp:MenuItem>
                    <asp:MenuItem Text="ORACLE" Value="ORACLE"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
