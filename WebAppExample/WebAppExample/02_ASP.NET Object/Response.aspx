<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Response.aspx.cs" Inherits="WebAppExample._02_ASP.NET_Object.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button runat="server" ID="btn_click" Text="클릭" OnClick="btn_click_Click" />
            <%="<h2>또 만나요</h2>" %>
            <asp:Button runat="server" ID="btn_js_click" Text="자바스크립트 인사말 클릭"  OnClick="btn_js_click_Click"/>
        </div>
    </form>
</body>
</html>
