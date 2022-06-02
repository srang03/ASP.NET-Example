<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmStatusManagement.aspx.cs" Inherits="WebAppExample._11_StatusManagement.FrmStatusManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>서버 저장</h3>
            Application 객체 : <asp:TextBox ID="txb_application" runat="server" /> <br />
            Session 객체 : <asp:TextBox ID="txb_session" runat="server" /> <br />
            Cache 객체 : <asp:TextBox ID="txb_cache" runat="server" /> <br />
        </div>

        <div>
            <h3>클라이언트 저장</h3>
            Cookies 객체 : <asp:TextBox ID="txb_cookies" runat="server" /> <br />
            ViewState 객체 : <asp:TextBox ID="txb_viewstate" runat="server" /> <br />
            <asp:button ID="btn_save" runat="server" OnClick="btn_save_Click2" text="상태 변수에 데이터 저장"/>
            <asp:button ID="btn_post" runat="server" text="PostBack"/>
        </div>
    </form>
</body>
</html>
