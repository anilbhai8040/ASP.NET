<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adrotetor.aspx.cs" Inherits="adrotetor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" unrat="server">
    <div>
    
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" 
            Height="100px" Width="300px" />
    
    </div>
    </form>
</body>
</html>
