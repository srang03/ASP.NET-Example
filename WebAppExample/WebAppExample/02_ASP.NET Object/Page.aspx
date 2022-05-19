<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page.aspx.cs" Inherits="WebAppExample._02_ASP.NET_Object.Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Page 클래스</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btn_PostBack"  runat="server" OnClick="btn_PostBack_Click" Text="포스트백"/>
            <asp:Button ID="btn_NewLoad"  runat="server" OnClick="btn_NewLoad_Click" Text="새로고침"/>
        </div>
    </form>
</body>
</html>
