<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoDelete.aspx.cs" Inherits="DevADONETProject._13_CRUD.FrmMemoDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>글을 삭제하시겠습니까?</h3>
            <asp:Button ID="btn_deleteMemo" runat="server" Text="삭제" OnClick="btn_deleteMemo_Click" />
            <asp:Button ID="btn_back" runat="server" Text="뒤로가기" OnClick="btn_back_Click" />
            <asp:HyperLink ID="hlk_list" runat="server" Text="글목록" />
        </div>
    </form>
</body>
</html>
