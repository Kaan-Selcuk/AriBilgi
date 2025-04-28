<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OkulWebsitesi.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br>
            <asp:Button ID="EklemeButonu" runat="server" OnClick="EklemeButonu_Click" Text="Button" />
        
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        
    </form>
</body>
</html>
