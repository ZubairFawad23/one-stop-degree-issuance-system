<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View Transcript.aspx.cs" Inherits="Project.View_Transcript" %>

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
            &nbsp;Transcript</p>
        <asp:GridView ID="GridView1" runat="server" BackColor="#999999" Width="800px">
        </asp:GridView>
        <br />
        <br />
        <strong>
        <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" CssClass="auto-style4" Height="40px" OnClick="Button1_Click" Text="Go Back" Width="160px" />
        </strong>
    </form>
</body>
</html>
