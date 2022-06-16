<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebAppExample._18_Lib.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txb_input" runat="server"></asp:TextBox>
            <asp:Button ID="btn_print" runat="server" Text="출력" OnClick="btn_print_Click" />
           
        </div>
        <div>
            <asp:Label ID="lbl_result" runat="server" />
        </div>
    </form>
</body>
</html>
