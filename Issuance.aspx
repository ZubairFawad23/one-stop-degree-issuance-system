<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Issuance.aspx.cs" Inherits="Project.Issuance" %>

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
            text-align: center;
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
            Issue Degree</p>
        <p class="auto-style2">
            Roll No&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style2">
            <strong>
            <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" CssClass="auto-style3" Height="40px" OnClick="Button2_Click" Text="Go Back" Width="160px" />
            </strong>
            <em><strong>
            <asp:Button ID="Button1" runat="server" BackColor="#999999" CssClass="auto-style3" Height="40px" OnClick="Button1_Click" Text="Change Status" Width="210px" />
            </strong></em>
        </p>
        <asp:GridView ID="GridView1" runat="server" BackColor="#999999" Width="1200px">
        </asp:GridView>
    </form>
</body>
</html>
