<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoCreate.aspx.cs" Inherits="DevADONETProject._13_CRUD.FrmMemoCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txb_name" runat="server" placeholder="이름을 작성해주세요." />
            <asp:TextBox ID="txb_email" runat="server" placeholder="이메일을 작성해주세요."/>
            <asp:TextBox ID="txb_title" runat="server" placeholder="제목을 작성해주세요."/>
            <asp:Button ID="btn_memoWrite" runat="server" Text="메모 작성" OnClick="btn_memoWrite_Click" />
            <asp:Button ID="btn_redirection" runat="server" Text="리다이렉션" OnClick="btn_redirection_Click" />
            <asp:label ID="lbl_result" runat="server" />
        </div>
    </form>
</body>
</html>
