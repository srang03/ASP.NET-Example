<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelControl.aspx.cs" Inherits="WebAppExample._05_RichControl.PanelControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnl_01" runat="server" Height="200px" Width="200px" ScrollBars="Vertical">
                <p>안녕하세요</p>
                <p>안녕하세요</p>
                <p>안녕하세요</p>
                <p>안녕하세요</p>
                <p>안녕하세요</p>
                <p>안녕하세요</p>
            </asp:Panel>

            <asp:Panel ID="pnl_02" runat="server" Height="200px" Width="200px" ScrollBars="Vertical">
                <p>반갑습니다.</p>
                <p>반갑습니다.</p>
                <p>반갑습니다.</p>
                <p>반갑습니다.</p>
                <p>반갑습니다.</p>
                <p>반갑습니다.</p>
            </asp:Panel>

            <asp:Panel ID="pnl_control" runat="server">
                <asp:Button ID="btn_showFirst" runat="server" OnClick="btn_showFirst_Click" Text="1번 패널" />
                <asp:Button ID="btn_showSecond" runat="server" OnClick="btn_showSecond_Click" Text="2번 패널" />
                <asp:TextBox ID="txt_message" runat="server"></asp:TextBox>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
