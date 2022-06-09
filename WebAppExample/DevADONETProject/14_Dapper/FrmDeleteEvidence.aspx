<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDeleteEvidence.aspx.cs" Inherits="DevADONETProject._14_Dapper.FrmDeleteEvidence" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>데이터를 삭제하시겠습니까?</h2>
            <asp:Button ID="btn_delete" runat="server" text="삭제" OnClick="btn_delete_Click"/>
            <asp:Button ID="btn_back" runat="server" Text="뒤로가기" OnClick="btn_back_Click" />
        </div>
    </form>
</body>
</html>
