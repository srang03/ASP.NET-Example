<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidator.aspx.cs" Inherits="WebAppExample._06_ValidationControl.CompareValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            비밀번호 : <asp:TextBox ID="txt_userpw" runat="server" TextMode="Password"/>
            비밀번호 확인 : <asp:TextBox ID="txt_userpwsecond" runat="server" TextMode="Password"/>

            <asp:CompareValidator ID="cvr_userpw" runat="server" ControlToValidate="txt_userpw"
                ControlToCompare="txt_userpwsecond" SetFocusOnError="true"
                ErrorMEssage="암호를 다시 확인해주세요" />
            <br />
            <asp:Button ID="btn_confirm" runat="server" Text="확인" />
        </div>
    </form>
</body>
</html>
