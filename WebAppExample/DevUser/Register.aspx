<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DevUser.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>회원가입</h3>
            <table>
                <tr>
                    <td>아이디</td>
                    <td><asp:TextBox ID="txb_userid" runat="server" /></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><asp:TextBox ID="txb_userpassword" runat="server" TextMode="Password" /></td>
                </tr>
            </table>
            <asp:Button ID="btn_register" runat="server" Text="회원가입" OnClick="btn_register_Click" />
        </div>
    </form>
</body>
</html>
