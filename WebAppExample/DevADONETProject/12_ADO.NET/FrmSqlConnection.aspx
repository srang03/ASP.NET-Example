<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmSqlConnection.aspx.cs" Inherits="DevADONETProject.FrmSqlConnection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button Id="btn_sqlConnection" Text="SQL 연결" runat="server" onClick="btn_sqlConnection_Click"/>
            <asp:Label ID="lbl_sqlConnection" runat="server" />
        </div>
    </form>
</body>
</html>
