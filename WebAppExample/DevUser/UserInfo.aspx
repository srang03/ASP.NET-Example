<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="DevUser.UserInfo" %>

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
                    <td>id</td>
                    <td><asp:Label id="lbl_id" runat="server" /></td>
                </tr>
                <tr>
                    <td>user id</td>
                    <td><asp:Label id="lbl_userid" runat="server" /></td>
                </tr>
                <tr>
                    <td>user pw</td>
                    <td><asp:TextBox id="txb_userpw" runat="server" /></td>
                </tr>
            </table>
            <asp:Button ID="btn_save" runat="server" Text="저장" OnClick="btn_save_Click" />
        </div>
    </form>
</body>
</html>
