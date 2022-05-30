<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequireControl.aspx.cs" Inherits="WebAppExample._06_ValidationControl.ValidationControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txt_userid" runat="server" />
            <asp:RequiredFieldValidator ID="rfv_userid" runat="server" ControlToValidate="txt_userid" ErrorMessage="아이디를 입력해주세요." Display="Static" />
            <br />
            <asp:TextBox ID="txt_userpw" runat="server" textMode="password"/>
            <asp:RequiredFieldValidator ID="rfv_userpw" runat="server" ControlToValidate="txt_userpw" Display="Dynamic" ErrorMessage="비밀번호를 입력해주세요." />
            <hr />
            <asp:Button ID="btn_login" runat="server" Text="로그인" OnClick="btn_login_Click" />

        </div>
    </form>
</body>
</html>
