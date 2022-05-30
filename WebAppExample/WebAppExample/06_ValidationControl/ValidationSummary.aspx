<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationSummary.aspx.cs" Inherits="WebAppExample._06_ValidationControl.ValidationSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txb_userId" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_userId" runat="server" ControlToValidate="txb_userId" ErrorMessage="아이디를 입력해주세요." Display="None"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="txb_userPw" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_userPw" runat="server" ControlToValidate="txb_userPw" ErrorMessage="비밀번호를 입력해주세요." Display="None"></asp:RequiredFieldValidator>

            <asp:Button ID="btn_login" runat="server" Text="로그인" />

            <asp:ValidationSummary ID="vs_value" ShowMessageBox="true" runat="server" ShowSummary="true" DisplayMode="List" />
        </div>
    </form>
</body>
</html>
