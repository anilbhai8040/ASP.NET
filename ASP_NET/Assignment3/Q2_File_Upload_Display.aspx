<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Q2_File_Upload_Display.aspx.cs" Inherits="Assignment3_Q2_File_Upload_Display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" Visible="False" />
    <div>
    
    </div>
    </form>
</body>
</html>
