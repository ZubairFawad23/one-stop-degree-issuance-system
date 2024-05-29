<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Complaint Form.aspx.cs" Inherits="Project.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style2 {
            text-align: center;
            font-size: large;
            color: #FFFFFF;
            font-weight: 700;
        }
        #form1 {
            text-align: center;
        }
    </style>
</head>
<body style="background-color: #040F26">
    <form id="form1" runat="server">
        <div style="text-align: center">
            <br />
            <strong><span class="auto-style1">One Stop Service Fast Islamabad</span></strong><br />
            <br />
            <span class="auto-style1"><strong>Complaint Form</strong><br />
            <br />
            </span>
        </div>
        <p class="auto-style2">
            <strong>Complaint type </strong>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="400px">
                <asp:ListItem>Name</asp:ListItem>
                <asp:ListItem>Number</asp:ListItem>
                <asp:ListItem>CNIC</asp:ListItem>
                <asp:ListItem>Fathers Name</asp:ListItem>
                <asp:ListItem>Password</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Update
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="400px"></asp:TextBox>
&nbsp;</p>
        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" style="background-color: #999999" Text="Go back" Width="120px" />
        <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" style="background-color: #999999" Text="Submit" Width="280px" />
    </form>
</body>
</html>
