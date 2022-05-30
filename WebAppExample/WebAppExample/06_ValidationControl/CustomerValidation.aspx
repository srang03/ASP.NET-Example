<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerValidation.aspx.cs" Inherits="WebAppExample._06_ValidationControl.CustomerValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script>
        function FuncValidationOddNumber(source, args) {
            if (parseInt(args.Value) % 2 == 1) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txb_even" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="cvt_even" runat="server" OnServerValidate="cvt_even_ServerValidate" ControlToValidate="txb_even" ErrorMessage="짝수만 입력해주세요" />
            <br />
            <asp:TextBox ID="txb_odd" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="cvt_odd" runat="server" ClientValidationFunction="FuncValidationOddNumber" ControlToValidate="txb_odd" ErrorMessage="홀수만 입력해주세요."/>
            <hr />
            <asp:Button ID="btn_submit" runat="server" text="확인"/>


        </div>
    </form>
</body>
</html>
