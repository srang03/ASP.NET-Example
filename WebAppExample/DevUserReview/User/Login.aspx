﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DevUserReview.User.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>로그인</h3>
            <table>
                <tr>
                    <td>아이디</td>
                    <td><asp:TextBox ID="txb_userId" runat="server" /></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><asp:TextBox ID="txb_userpassword" runat="server" /></td>
                </tr>
            </table>
            <asp:Label ID="lbl_message" runat="server" />
            <asp:Button runat="server" ID="btn_login" OnClick="btn_login_Click" Text="로그인" />
        </div>
        
    </form>
</body>
</html>
