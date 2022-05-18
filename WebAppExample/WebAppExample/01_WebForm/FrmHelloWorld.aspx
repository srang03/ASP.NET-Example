<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmHelloWorld.aspx.cs" Inherits="WebAppExample.FrmHelloWorld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="txtDisplay" runat="server"/>
            <asp:Button ID="btnClick" runat="server" Text="클릭" OnClick="btnClick_Click" />
        </div>
    </form>
</body>
</html>
