<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppSession.aspx.cs" Inherits="WebAppExample._02_ASP.NET_Object.AppSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Application Session</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>현재 페이지가 모든 사용자에 의해 <asp:Label ID="lbl_application" runat="server" />번 실행됨</div>
            <div>현재 페이지가 나의 의해 <asp:Label ID="lbl_session" runat="server" />번 실행됨</div>
            <div>나의 고유 세션 번호 : <asp:Label ID="lbl_session_id" runat="server" /></div>
            <div>현재 세션 유지시간 : <asp:Label ID="lbl_Timeout" runat="server" /></div>

        </div>
    </form>
</body>
</html>
