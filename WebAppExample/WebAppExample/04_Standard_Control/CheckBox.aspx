<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBox.aspx.cs" Inherits="WebAppExample._04_Standard_Control.CheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CheckBox Control</h1>
            <asp:CheckBox ID="cbx_01" runat="server" Text="C#" />
            <asp:CheckBox ID="cbx_02" runat="server" Text="ASP.NET" />
            <asp:CheckBox ID="cbx_03" runat="server" Text="Core" />
            <hr />
            <asp:Button ID="btn_checkIt" runat="server" Text="체크" OnClick="btn_checkIt_Click"/>
        </div>
        <asp:Label ID="lbl_01" Text="" runat="server" />
        <div>
            <h1>CheckBoxList Control</h1>
            <asp:CheckBoxList runat="server" ID="cbl_01" RepeatDirection="Horizontal" RepeatColumns="2">
                <asp:ListItem Text="C#" Value="1" />
                <asp:ListItem Text="ASP.NET" Value="2" />
                <asp:ListItem Text="Core" Value="3" />
            </asp:CheckBoxList>
            <hr />
            <asp:Button ID="btn_01" runat="server" OnClick="btn_01_Click" />
        </div>
        <asp:Label ID="lbl_02" Text="" runat="server" />
    </form>
</body>
</html>
