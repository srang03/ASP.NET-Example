<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCounter.aspx.cs" Inherits="WebAppExample._11_StatusManagement.FrmCounter" %>

<%@ Register Src="~/11_StatusManagement/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_counter" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lbl_now" runat="server"></asp:Label>
            <br />
            <uc1:WebUserControl1 runat="server" id="WebUserControl1" />
        </div>
    </form>
</body>
</html>
