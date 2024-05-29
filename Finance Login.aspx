<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Finance Login.aspx.cs" Inherits="Project.Finance_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #FFFFFF;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style4 {
            margin-left: 440px;
        }
        .auto-style5 {
            margin-left: 600px;
        }
        .auto-style6 {
            margin-left: 640px;
        }
        .auto-style7 {
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
            <strong>One Stop Services FAST Islamabad</strong></p>
        <p class="auto-style2">
            Finance Dashboard</p>
        <p class="auto-style5">
            <span class="auto-style3">Roll No&nbsp; </span>&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style6">
            <strong>
            <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" CssClass="auto-style7" Height="40px" OnClick="Button2_Click" Text="Log Out" Width="160px" />
            <asp:Button ID="Button1" runat="server" BackColor="#999999" CssClass="auto-style7" Height="40px" OnClick="Button1_Click" Text="Search" Width="160px" />
            </strong>
        </p>
        <p>
&nbsp;<span class="auto-style3">Requests:</span></p>
        <p class="auto-style4">
            <asp:GridView ID="GridView1" runat="server" BackColor="#999999" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="800px">
            </asp:GridView>
        </p>
    </form>
    </body>
</html>
