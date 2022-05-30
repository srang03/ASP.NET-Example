<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiView.aspx.cs" Inherits="WebAppExample._05_RichControl.MultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="mtv_view" runat="server">
                <asp:View ID="view_01" runat="server">
                    <asp:Button ID="btn_login" runat="server" Text="로그인" OnClick="btn_login_Click" />
                </asp:View>
                <asp:View ID="view_02" runat="server">
                    <asp:Button ID="btn_logout" runat="server" Text="로그아웃" OnClick="btn_logout_Click" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
