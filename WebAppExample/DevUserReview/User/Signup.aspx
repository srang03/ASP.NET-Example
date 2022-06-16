<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="DevUserReview.User.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>아이디</td>
                    <td><asp:TextBox ID="txb_id" runat="server" /></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><asp:TextBox ID="txb_pw" runat="server" /></td>
                </tr>
            </table>
            <asp:Label ID="lbl_message" runat="server" />
            <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="회원가입"/>
            <asp:button ID="btn_cancel" runat="server" Text="뒤로가기" OnClick="btn_cancel_Click" /> 
        </div>
    </form>
</body>
</html>
