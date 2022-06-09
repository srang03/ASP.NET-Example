<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoDelete.aspx.cs" Inherits="DevADONETProject._13_Review.FrmMemoDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div_info" runat="server">
            <h2>정말 삭제하시겠습니까?</h2>
            <asp:Button id="btn_deleteMemo" runat="server" Text="삭제" OnClick="btn_deleteMemo_Click" />
            <asp:HyperLink ID="hpl_back" runat="server" Text="취소" />
        </div>
        <div id="div_deleted" runat="server">
            <asp:Label ID="lbl_result" runat="server" />
            <asp:HyperLink ID="hpl_list" runat="server" text="확인" NavigateUrl="~/13_Review/FrmMemoList.aspx"/>
        </div>
    </form>
</body>
</html>
