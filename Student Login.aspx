<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student Login.aspx.cs" Inherits="Project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            font-size: large;
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style4 {
            font-size: x-large;
            color: #FFFFFF;
            text-align: left;
            margin-left: 520px;
        }

        .auto-style5 {
            font-weight: bold;
            font-size: large;
        }

    </style>
</head>
<body style="background-color: #040F26">
    <form id="form1" runat="server">
        <div>
        </div>
        <p class="auto-style2">
            <strong style="font-size: xx-large; color: #FFFFFF">ONE STOP SERVICE FAST ISLAMABAD</strong></p>
        <p class="auto-style3">
            &nbsp;Welcome to Student Dashboard!</p>
        <p class="auto-style4">
            Menu:</p>
        <p class="auto-style4">
            <asp:Button ID="Button1" runat="server" BackColor="#999999" OnClick="Button1_Click" Text="Degree Issuance Form" Width="450px" Height="60px" style="font-size: large; font-weight: 700; margin-top: 0px" />
        </p>
        <p class="auto-style4">
            <asp:Button ID="Button2" runat="server" BackColor="#999999" OnClick="Button2_Click" Text="View Your Transcript" Width="450px" Height="60px" style="font-size: large; font-weight: 700" />
        </p>
        <p class="auto-style4">
            <strong>
            <asp:Button ID="Button5" runat="server" BackColor="#999999" CssClass="auto-style5" Height="60px" OnClick="Button5_Click" Text="Complaint Form" Width="450px" />
            </strong>
        </p>
        <p class="auto-style4">
            <strong>
            <asp:Button ID="Button6" runat="server" BackColor="#999999" CssClass="auto-style5" Height="60px" OnClick="Button6_Click" Text="Activity Tracking" Width="450px" />
            </strong>
        </p>
        <p class="auto-style4">
            <strong>
            <asp:Button ID="Button7" runat="server" BackColor="#999999" CssClass="auto-style5" Height="60px" OnClick="Button7_Click" Text="Collect Degree" Width="450px" />
            </strong>
        </p>
        <p class="auto-style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BackColor="#FFFFCC" Height="60px" OnClick="Button4_Click" style="font-weight: 700; font-size: large" Text="Logout" Width="225px" />
        </p>
    </form>
</body>
</html>
