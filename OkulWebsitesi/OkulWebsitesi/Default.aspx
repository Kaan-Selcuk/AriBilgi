<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OkulWebsitesi.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <asp:TextBox ID="ONoTextBox" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; Öğrenci No<br/>
            <asp:TextBox ID="OAdiTextBox" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; Adı Soyadı<br/>
            <asp:Button ID="EklemeButonu" runat="server" OnClick="EklemeButonu_Click" Text="Ekle" />
        <br/>
            <asp:Button ID="EF_Ekle" runat="server" Text="EF Ekle" OnClick="EF_Ekle_Click" />
        
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        
    </form>
</body>
</html>
