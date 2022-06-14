<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DevUser.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>메인 페이지</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>회원 관리</h3>
            <asp:LoginView ID="lgv_view" runat="server">
                <AnonymousTemplate>
                    <!-- 로그인 전 -->
                    <asp:LoginStatus ID="lgs_logout" runat="server" LoginText="로그인" /> |
                    <asp:HyperLink ID="hpl_signup" runat="server" NavigateUrl="Register.aspx" Text="회원가입"/>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <asp:LoginStatus ID="lgs_login" runat="server" LogoutText="로그아웃" Visible="false" />
                    <asp:HyperLink ID="hpl_logout" runat="server" NavigateUrl="Logout.aspx" Text="로그아웃" /> |
                    <asp:HyperLink ID="hpl_userinfo" runat="server" NavigateUrl="UserInfo.aspx">
                        <asp:LoginName ID="lgn_name" runat="server" />
                    </asp:HyperLink>
                </LoggedInTemplate>
            </asp:LoginView>
        </div>
    </form>
</body>
</html>
