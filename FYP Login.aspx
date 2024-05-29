<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FYP Login.aspx.cs" Inherits="Project.FYP_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
            margin-left: 360px;
        }
        .auto-style4 {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style6 {
            font-size: x-large;
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body style="background-color: #040F26">
    <form id="form1" runat="server">
        <div>
        </div>
        <p class="auto-style4">
            <strong>One Stop Services FAST Islamabad</strong></p>
        <p class="auto-style4">
            FYP Dashboard</p>
        <p class="auto-style5">
            Roll No&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style5">
            <span class="auto-style7">Remarks&nbsp; </span>
            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style4">
            <strong>
            <asp:Button ID="Button3" runat="server" BackColor="#FFFFCC" CssClass="auto-style8" Height="40px" OnClick="Button3_Click" Text="Log Out" Width="160px" />
            </strong>
            <asp:Button ID="Button1" runat="server" BackColor="#999999" Height="40px" OnClick="Button1_Click" style="font-weight: 700; font-size: large" Text="Accept" Width="161px" />
            <strong>
            <asp:Button ID="Button2" runat="server" BackColor="#999999" CssClass="auto-style8" Height="40px" OnClick="Button2_Click" Text="Reject" Width="160px" />
            </strong>&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style6">
&nbsp;Requests:</p>
        <p class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" BackColor="#999999" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="800px">
            </asp:GridView>
        </p>
    </form>
</body>
</html>
