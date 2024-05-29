<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="One Stop Login.aspx.cs" Inherits="Project.One_Stop_Login" %>

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
            color: #FFFFFF;
            font-size: x-large;
            margin-left: 680px;
        }
        .auto-style6 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style11 {
            margin-left: 360px;
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
            One Stop Admin Dashboard</p>
        <p class="auto-style2">
            &nbsp;&nbsp; Menu</p>
        <p class="auto-style11">
            <strong>
            <asp:Button ID="Button1" runat="server" Height="60px" Text="Generate Token" Width="350px" CssClass="auto-style6" OnClick="Button1_Click" BackColor="#999999" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="Button2" runat="server" Height="60px" Text="View Pending Requests" Width="350px" CssClass="auto-style6" OnClick="Button2_Click" BackColor="#999999" />
            </strong>
        </p>
        <p class="auto-style11">
            <strong>
            <asp:Button ID="Button3" runat="server" Height="60px" Text="View Processed Requests" Width="350px" CssClass="auto-style6" OnClick="Button3_Click" BackColor="#999999" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="Button4" runat="server" Height="60px" Text="View New Requests" Width="350px" CssClass="auto-style6" OnClick="Button4_Click" BackColor="#999999" />
            </strong>
        </p>
        <p class="auto-style11">
            <strong>
            <asp:Button ID="Button5" runat="server" Height="60px" Text="Inform Objections" Width="351px" CssClass="auto-style6" BackColor="#999999" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="Button6" runat="server" Height="60px" Text="Issue Degree" Width="349px" CssClass="auto-style6" OnClick="Button6_Click" BackColor="#999999" />
            </strong>
        </p>
        <p class="auto-style11">
            <strong>
            <asp:Button ID="Button7" runat="server" Height="60px" OnClick="Button7_Click" Text="Issue Transcript" Width="351px" CssClass="auto-style6" BackColor="#999999" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="Button8" runat="server" Height="60px" Text="Logout" Width="349px" CssClass="auto-style6" OnClick="Button8_Click" BackColor="#FFFFCC" />
            </strong>
        </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
