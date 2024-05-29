<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity Tracking.aspx.cs" Inherits="Project.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
        #form1 {
            text-align: center;
        }
    </style>
</head>
<body style="background-color: #040F26">
    <form id="form1" runat="server">
        <div style="font-weight: 700; font-size: xx-large; color: #FFFFFF">
            One Stop Services FAST Islamabad</div>
        <p class="auto-style1" style="text-align: center; font-size: xx-large">
            <strong>Activity Tracking </strong>
        </p>
&nbsp;&nbsp;&nbsp;
        <div style="margin-left: 480px">
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="text-align: center; color: #FFFFFF" Width="541px" BackColor="#999999">
            </asp:GridView>
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" style="text-align: center" Text="Go Back" Width="150px" />
    </form>
</body>
</html>
