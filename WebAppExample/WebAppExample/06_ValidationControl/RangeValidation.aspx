<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RangeValidation.aspx.cs" Inherits="WebAppExample._06_ValidationControl.RangeValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>1
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="rvd_age" runat="server" ControlToValidate="txt_age" ErrorMessage="올바른 나이를 입력해주세요." MinimumValue="1" MaximumValue="150" Type="Integer" Display="Static" SetFocusOnError="true" />
            <asp:button id="btn_check" runat="server"  Text="체크"/>
        </div>
    </form>
</body>
</html>
