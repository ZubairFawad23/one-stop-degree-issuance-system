<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deg Iss Form.aspx.cs" Inherits="Project.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style4 {
            font-size: large;
            text-align: left;
            color: #FFFFFF;
            font-weight: 700;
            margin-left: 480px;
        }
    </style>
</head>
<body style="background-color: #040F26">
    <form id="form1" runat="server">
        <div>
        </div>
        <p class="auto-style1">
            <strong style="color: #FFFFFF">ONE STOP SERVICE FAST ISLAMABAD</strong></p>

   
            
            
                <p class="auto-style3">
                    Degree Issuance Form</p>
        <p class="auto-style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="400px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Degree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="400px">
                <asp:ListItem>Computer Science</asp:ListItem>
                <asp:ListItem>Artificial Intelligence</asp:ListItem>
                <asp:ListItem>Data Science</asp:ListItem>
                <asp:ListItem>Cyber Security</asp:ListItem>
                <asp:ListItem>Software Engineering</asp:ListItem>
                <asp:ListItem>Business Analytics</asp:ListItem>
                <asp:ListItem>Accounting &amp; Finance</asp:ListItem>
                <asp:ListItem>Electrical Engineering</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="auto-style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Roll No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="400px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style4">
            Mobile No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="400px"></asp:TextBox>
        </p>
        <p class="auto-style4">
&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="406px"></asp:TextBox>
        </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" Height="40px" OnClick="Button1_Click" Text="Go Back" Width="120px" />
        <asp:Button ID="Button2" runat="server" BackColor="#999999" Height="40px" Text="Submit " Width="280px" OnClick="Button2_Click" />
    </form>
</body>
</html>
