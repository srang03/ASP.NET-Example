<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoView.aspx.cs" Inherits="DevADONETProject._13_CRUD.FrmMemoView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_id" runat="server"/> <br />
            <asp:Label ID="lbl_name" runat="server"/> <br />
            <asp:Label ID="lbl_email" runat="server"/> <br />
            <asp:Label ID="lbl_title" runat="server"/> <br />
            <asp:Label ID="lbl_postDate" runat="server"/> <br />
            <asp:Label ID="lbl_postIp" runat="server"/> <br />

            <asp:HyperLink ID="hlk_createMemo" runat="server" text="글쓰기"/> 
            <asp:HyperLink ID="hlk_modifyMemo" runat="server" text="수정하기"/>
            <asp:HyperLink ID="hlk_deleteMemo" runat="server" text="삭제하기"/>
            <asp:HyperLink ID="hlk_listView" runat="server" NavigateUrl="~/13_CRUD/FrmMemoList.aspx" text="글목록"/>
        </div>
    </form>
</body>
</html>
