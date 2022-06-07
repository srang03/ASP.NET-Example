<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmSqlCommand.aspx.cs" Inherits="DevADONETProject.FrmSqlCommand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SqlCommand Class</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btn_executeSql" runat="server" Text="실행" OnClick="btn_executeSql_Click" />
            <asp:label Id="lbl_sqlResult" runat="server" />
        </div>
    </form>
</body>
</html>
