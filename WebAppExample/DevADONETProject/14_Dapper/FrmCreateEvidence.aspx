<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCreateEvidence.aspx.cs" Inherits="DevADONETProject._14_Dapper.FrmCreateEvidence" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>이름 : <asp:TextBox ID="txb_name" runat="server"></asp:TextBox></div>
            <div>내용 : <asp:TextBox ID="txb_content" runat="server"></asp:TextBox></div>
            <div><asp:Button ID="btn_create" runat="server" Text="저장" OnClick="btn_create_Click" /></div>
        </div>
        <div>
            <asp:Label ID="lbl_result" runat="server" />
        </div>
    </form>
</body>
</html>
