<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMenu.aspx.cs" Inherits="WebAppExample._10_MenuControl.FrmMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu id="menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="사이트맵 패스컨트롤" Value="SiteMapPath" NavigateUrl="~/09_SiteMapPath/FrmStieMapPath.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="22" Value="SiteMapPath" NavigateUrl="~/09_SiteMapPath/FrmStieMapPath.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="강의실" Value="SiteMapPath" NavigateUrl=""></asp:MenuItem>

                </Items>
            </asp:Menu>
        </div>
    </form>
</body>
</html>
