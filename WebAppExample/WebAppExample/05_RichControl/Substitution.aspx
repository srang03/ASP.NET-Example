<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Substitution.aspx.cs" Inherits="WebAppExample._05_RichControl.Substitution" %>
<%@ OutputCache Duration="60" VaryByParam="None" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Substitution(대체 컨트롤)</title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>실제 IIS 웹 서버에서만 실행</h3>
        <div>
            캐싱 적용
            <asp:Label ID="lbl_cached" runat="server"></asp:Label>
        </div>
        <div>
            캐싱 비적용
       <asp:Substitution ID="Substitution1" runat="server" MethodName="GetCurrentTime" />
        </div>
    </form>
</body>
</html>
