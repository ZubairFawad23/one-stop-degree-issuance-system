<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Generate Token.aspx.cs" Inherits="Project.Generate_Token" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            text-align: left;
            margin-left: 480px;
        }
    </style>
</head>
<body style="background-color: #040F26">
    <form id="form1" runat="server">
        <div>
        </div>
        <p class="auto-style1">
            <strong>One Stop Services FAST Islamabad</strong></p>
        <p class="auto-style1">
            Generate Token</p>
        <p class="auto-style2">
            <span class="auto-style3">Roll No </span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
        </p>
        <p class="auto-style2">
            <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" Height="40px" OnClick="Button2_Click1" Text="Go Back" Width="160px" />
            <asp:Button ID="Button1" runat="server" BackColor="#999999" Height="40px" OnClick="Button1_Click1" Text="Generate Token" Width="160px" />
        </p>
        <p class="auto-style4">
            <asp:GridView ID="GridView1" runat="server" BackColor="#999999" Width="800px">
            </asp:GridView>
        </p>
    </form>
</body>
</html>
