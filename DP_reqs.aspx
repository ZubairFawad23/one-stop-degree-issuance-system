<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DP_reqs.aspx.cs" Inherits="Project.DP_reqs" %>

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
            font-size: large;
            text-align: left;
            color: #FFFFFF;
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
            One Stop Admin Dashboard</p>
        <p class="auto-style2">
            Pending Requests</p>
        <asp:GridView ID="GridView1" runat="server" BackColor="#999999" Width="1200px">
        </asp:GridView>
        <br />
        <br />
        <strong>
        <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" CssClass="auto-style3" Height="40px" OnClick="Button1_Click" Text="Go Back" Width="160px" />
        </strong>
    </form>
</body>
</html>
