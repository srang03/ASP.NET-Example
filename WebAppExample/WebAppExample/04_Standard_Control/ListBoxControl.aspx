<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBoxControl.aspx.cs" Inherits="WebAppExample._04_Standard_Control.ListBoxControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox runat="server" ID="lbx_01" SelectionMode="Multiple" OnSelectedIndexChanged="lbx_01_SelectedIndexChanged" AutoPostBack="true"/>
            <hr />
            <asp:Button ID="btn_01" runat="server" OnClick="btn_01_Click" Text="클릭"/>
            <hr />
            <asp:Label ID="lbl_01" runat="server" />
            
        </div>

    </form>
</body>
</html>
