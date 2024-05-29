<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Director Login.aspx.cs" Inherits="Project.Director_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style2 {
            font-size: x-large;
            color: #FFFFFF;
            margin-left: 560px;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: large;
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
            Director Login</p>
        <p class="auto-style2">
            Menu:</p>
        <p style="margin-left: 560px">
            <asp:Button ID="Button6" runat="server" BackColor="#999999" Height="60px" style="font-weight: 700; font-size: large" Text="Requests Generated per Day" Width="450px" OnClick="Button6_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="margin-left: 560px">
            <asp:Button ID="Button7" runat="server" BackColor="#999999" Height="60px" OnClick="Button7_Click" style="font-weight: 700; font-size: large" Text="View Pending Requests" Width="450px" />
        </p>
        <p style="margin-left: 560px">
            <asp:Button ID="Button8" runat="server" BackColor="#999999" Height="60px" OnClick="Button8_Click" style="font-weight: 700; font-size: large; margin-left: 0px" Text="View Processed Requests" Width="450px" />
        </p>
        <p style="margin-left: 560px">
            <asp:Button ID="Button9" runat="server" BackColor="#999999" Height="60px" style="font-weight: 700; font-size: large" Text="Activity Tracking" Width="450px" OnClick="Button9_Click" />
        </p>
        <p style="margin-left: 560px">
            <strong>
            <asp:Button ID="Button11" runat="server" BackColor="#999999" CssClass="auto-style3" Height="60px" OnClick="Button11_Click" Text="View Time Taken " Width="450px" />
            </strong>
        </p>
        <p style="margin-left: 680px">
            <asp:Button ID="Button10" runat="server" Height="60px" OnClick="Button10_Click" style="font-weight: 700; font-size: large" Text="Logout" Width="225px" />
        </p>
    </form>
</body>
</html>
