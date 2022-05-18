<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="WebAppExample._02_ASP.NET_Object.Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Request</h2>
            <div><asp:TextBox ID="input_id" runat="server" placeholder="아이디를 입력해주세요." /></div>
            <div><asp:TextBox ID="input_pw" runat="server" TextMode="Password" placeholder="비밀번호를 입력해주세요." /></div>
            <div><asp:TextBox ID="input_name" runat="server" placeholder="이름을 입력해주세요." /></div>
            <div><asp:TextBox ID="input_age" runat="server" placeholder="나이를 입력해주세요." /></div>
            <div><asp:Button ID="btn_submit" runat="server" Text="전송" onClick="btn_submit_Click"/></div>
        </div>
        <div>
            <h2>IP Address</h2>
            <asp:label ID="lbl_01" runat="server" />
            <asp:label ID="lbl_02" runat="server" />
            <asp:label ID="lbl_03" runat="server" />
        </div>
    </form>
</body>
</html>
