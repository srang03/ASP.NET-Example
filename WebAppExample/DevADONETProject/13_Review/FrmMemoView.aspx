<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoView.aspx.cs" Inherits="DevADONETProject._13_Review.FrmMemoView" %>

<%@ Register Src="~/13_Review/btn_listMemo.ascx" TagPrefix="uc1" TagName="btn_listMemo" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div><asp:Label ID="lbl_name" runat="server" /></div>
            <div><asp:Label ID="lbl_email" runat="server" /></div>
            <div><asp:Label ID="lbl_title" runat="server" /></div>
            <div><asp:Label ID="lbl_postDate" runat="server" /></div>
        </div>
        <div>
            <asp:Label ID="lbl_message" runat="server" />
        </div>
        <div ID="div_bottomButton" runat="server">
            <asp:Button id="btn_modifyMemo" runat="server" Text="글 수정" OnClick="btn_modifyMemo_Click" />
            <asp:Button id="btn_deleteMemo" runat="server" Text="글 삭제" OnClick="btn_deleteMemo_Click" />
            <uc1:btn_listMemo runat="server" id="btn_listMemo" />
        </div>
    </form>
</body>
</html>
