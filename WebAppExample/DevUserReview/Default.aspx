<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DevUserReview.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Main view</h3>
            <asp:LoginView ID="lgv_view" runat="server">
                <AnonymousTemplate>
                    <asp:LoginStatus ID="lgs_none" runat="server" LoginText="로그인" /> |
                    <asp:HyperLink ID="hpl_signup" runat="server" NavigateUrl="./User/Signup.aspx" Text-="회원가입" />
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <asp:LoginStatus ID="lgs_login" runat="server" loginText="로그아웃" />
                    <asp:HyperLink ID="hpl_login" runat="server" NavigateUrl="./User/Logout.aspx" Text="로그아웃" /> |
                    <asp:LoginName ID="LoginName" runat="server" />
                </LoggedInTemplate>
            </asp:LoginView>
        </div>
    </form>
</body>
</html>
