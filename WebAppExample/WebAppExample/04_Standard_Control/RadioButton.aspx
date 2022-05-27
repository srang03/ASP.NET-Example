<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButton.aspx.cs" Inherits="WebAppExample._04_Standard_Control.RadioButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButton ID="rdoM" runat="server" Text="" GroupName="gender"/>
            <asp:RadioButton ID="rdoW" runat="server" Text="" GroupName="gender"/>
            <asp:Button ID="btn_01" runat="server" Text="클릭" OnClick="btn_01_Click" />
            <asp:label ID="lbl_01" runat="server" />
        </div>
    </form>
</body>
</html>
