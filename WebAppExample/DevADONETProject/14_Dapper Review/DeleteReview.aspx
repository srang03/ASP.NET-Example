 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteReview.aspx.cs" Inherits="DevADONETProject._14_Dapper_Review.DeleteReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div_delete" runat="server">
            <label id="lbl_message" runat="server"/>
        </div>
        <div id="div_deletedbox" runat="server">
            <asp:Button Text="삭제" runat="server" id="btn_delete" OnClick="btn_delete_Click"/>
            <asp:Button Text="뒤로가기" runat="server" ID="btn_goBack" OnClick="btn_goBack_Click" />
        </div>
    </form>
</body>
</html>
