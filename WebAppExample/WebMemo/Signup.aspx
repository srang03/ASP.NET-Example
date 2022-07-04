<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebMemo.Signup" %>

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
                        이름
                    </td>
                    <td>
                        <asp:TextBox ID="txb_name" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        이메일
                    </td>
                    <td>
                        <asp:TextBox ID="txb_email" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        비밀번호
                    </td>
                    <td>
                        <asp:TextBox ID="txb_password" runat="server" TextMode="Password"/>
                    </td>
                </tr>
             </table>
            <div>
                <asp:Label runat="server" ID="lbl_message" />
            </div>
            <div>
                <asp:Button runat="server" ID="btn_signup" Text="저장" OnClick="btn_signup_Click" />
                <asp:HyperLink runat="server" ID="hpl_list" Text="글목록" NavigateUrl="./MemoBoard/ListMemo.aspx" />
            </div>
        </div>
    </form>
</body>
</html>
