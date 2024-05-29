<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="D_Activity.aspx.cs" Inherits="Project.D_Activity" %>

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
            text-align: center;
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
            Activity Tracking</p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" BackColor="#999999" Width="1200px">
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" Height="40px" OnClick="Button1_Click" Text="Go Back" Width="160px" />
    </form>
</body>
</html>
