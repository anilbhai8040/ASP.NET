<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registraton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>User Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            width: 450px;
            margin: 50px auto;
            padding: 25px;
            background-color: #fff;
            border-radius: 8px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px #aaa;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .row {
            margin-bottom: 12px;
        }
        .label {
            width: 140px;
            display: inline-block;
            vertical-align: top;
            font-weight: bold;
        }
        .rb, .cb {
            display: inline-block;
            vertical-align: middle;
        }
        input[type=text], input[type=password], textarea, select {
            width: 200px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type=text]:hover, input[type=password]:hover, textarea:hover, select:hover {
            border-color: #66afe9;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-left: 5px;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 8px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #45a049;
        }
        #lblMsg {
            font-weight: bold;
        }
    </style>
    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>User Registration</h2>

            <!-- Name -->
            <div class="row">
                <span class="label">Name :</span>
                <asp:TextBox ID="txtName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*" CssClass="error" />
            </div>

            <!-- Email -->
            <div class="row">
                <span class="label">Email :</span>
                <asp:TextBox ID="txtEmail" runat="server" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="*" CssClass="error" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
                    ErrorMessage="Invalid Email" CssClass="error" />
            </div>

            <!-- Password -->
            <div class="row">
                <span class="label">Password :</span>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" CssClass="error" />
            </div>

            <!-- Confirm Password -->
            <div class="row">
                <span class="label">Confirm Password :</span>
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" />
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirm" ErrorMessage="Password mismatch" CssClass="error" />
            </div>

            <!-- Mobile -->
            <div class="row">
                <span class="label">Mobile :</span>
                <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" 
                    onkeypress="return isNumberKey(event);" />
                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                    ErrorMessage="*" CssClass="error" />
                <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile"
                    ValidationExpression="^\d{10}$" ErrorMessage="Enter 10-digit mobile" CssClass="error" />
            </div>

            <!-- DOB -->
            <div class="row">
                <span class="label">DOB :</span>
                <asp:TextBox ID="txtDOB" runat="server" />
            </div>

            <!-- Gender -->
            <div class="row">
                <span class="label">Gender :</span>
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" CssClass="rb">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <!-- Hobby -->
            <div class="row">
                <span class="label">Hobby :</span>
                <asp:CheckBoxList ID="cblHobby" runat="server" RepeatDirection="Horizontal" CssClass="cb">
                    <asp:ListItem Selected="True">Java</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>CPP</asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <!-- Country -->
            <div class="row">
                <span class="label">Country :</span>
                <asp:DropDownList ID="ddlCountry" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                </asp:DropDownList>
            </div>

            <!-- Address -->
            <div class="row">
                <span class="label">Address :</span>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="200px" Height="60px" />
            </div>

            <!-- Terms & Conditions -->
            <div class="row">
                <asp:CheckBox ID="chkTerms" runat="server" />
                I accept Terms & Conditions
                <asp:CustomValidator ID="cvTerms" runat="server"
                    OnServerValidate="cvTerms_ServerValidate"
                    ErrorMessage="You must accept terms" CssClass="error" />
            </div>

            <!-- Register Button -->
            <div class="row" align="center">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="btn" />
            </div>

            <!-- Success Message -->
            <div class="row" align="center">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Green" />
            </div>
        </div>
    </form>
</body>
</html>
