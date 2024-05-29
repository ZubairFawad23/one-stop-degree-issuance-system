<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fee Details.aspx.cs" Inherits="Project.Fee_Details" %>

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
            margin-left: 520px;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-size: x-large;
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
            Fee Details</p>
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#999999" Width="800px">
            </asp:GridView>
        </div>
        <div class="auto-style3">
            <span class="auto-style4">
            <br />
            <br />
            Remarks </span>
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="357px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" Height="40px" OnClick="Button1_Click" Text="Go Back" Width="160px" />
            <asp:Button ID="Button2" runat="server" BackColor="#999999" Height="40px" OnClick="Button2_Click" Text="Accept" Width="160px" />
            <asp:Button ID="Button3" runat="server" BackColor="#999999" Height="40px" OnClick="Button3_Click" Text="Reject" Width="160px" />
        </div>
    </form>
</body>
</html>
