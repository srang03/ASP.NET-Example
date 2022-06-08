<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoModify.aspx.cs" Inherits="DevADONETProject._13_CRUD.FrmMemoModify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_name" runat="server" /> <br />
            <asp:Label ID="lbl_email" runat="server" /> <br />
            <asp:TextBox ID="txt_title" runat="server" /> <br />
            <div id="btn_content" runat="server">
                <asp:Button ID="btn_modify" runat="server" text="수정하기" OnClick="btn_modify_Click" />
                <asp:HyperLink ID="hpl_MemoList" runat="server" Text="글목록" />
            </div>
            
        </div>
    </form>
</body>
</html>
