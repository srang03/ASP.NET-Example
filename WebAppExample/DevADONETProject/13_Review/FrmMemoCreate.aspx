<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoCreate.aspx.cs" Inherits="DevADONETProject._13_Review.FrmMemoCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>글 생성</h3>
            <div><asp:TextBox ID="txb_name" runat="server" placeholder="이름을 입력해주세요." /></div>
            <div><asp:TextBox ID="txb_email" runat="server" placeholder="이메일을 입력해주세요." /></div>
            <div><asp:TextBox ID="txb_title" runat="server" placeholder="제목을 입력해주세요." /></div>
            <asp:Label ID="lbl_message" runat="server" />
            <div>
                <asp:Button ID="btn_createMemo" runat="server" Text="글생성" OnClick="btn_createMemo_Click" />
                <asp:HyperLink ID="hpl_listMemo" runat="server" Text="글목록" NavigateUrl="FrmMemoList.aspx"/>
            </div>
        </div>
    </form>
</body>
</html>
