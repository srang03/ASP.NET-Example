<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebMemo.Login" %>

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
                    <td>
                        이메일
                    </td>
                    <td>
                        <asp:TextBox id="txb_email" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        비밀번호
                    </td>
                    <td>
                        <asp:TextBox id="txb_password" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Button runat="server" ID="btn_login" Text="로그인" OnClick="btn_login_Click" />
            <asp:Button runat="server" ID="btn_signup" Text="회원가입" OnClick="btn_signup_Click" />
        </div>
        <div>
            <label runat="server" id="lbl_message" />
        </div>
        <asp:HyperLink ID="hpl_list" runat="server" Text="글목록" NavigateUrl="~/MemoBoard/ListMemo.aspx" />
    </form>
</body>
</html>
