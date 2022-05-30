<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegularExpressionValidator.aspx.cs" Inherits="WebAppExample._06_ValidationControl.RegularExpressionValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>정규식 확인 유효성 검사 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="val_email" runat="server" ErrorMessage="이메일을 정확히 입력하세요"
                ControlToValidate="txt_email"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="btn_ok" runat="server" text="확인"/>
        </div>
    </form>
</body>
</html>
