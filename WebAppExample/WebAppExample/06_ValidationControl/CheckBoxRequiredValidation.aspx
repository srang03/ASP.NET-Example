<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxRequiredValidation.aspx.cs" Inherits="WebAppExample._06_ValidationControl.CheckBoxRequiredValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script>    
        function ValidationConfirmCheckBox(sender, args) {
            if (document.getElementById("<%= cbx_confirm.ClientID %>").checked == true) {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>이용 약관</h2>
            <p>회원 이용 약관에 동의하셔야 회원가입을 하실 수 있습니다.</p>
            <asp:TextBox ID="txb_Agreement" runat="server" TextMode="MultiLine" Height="80px" Width="100%" Style="font-size: 9pt"></asp:TextBox>
            <div class="check_box">
                <asp:CheckBox ID="cbx_confirm" runat="server" Checked="false" />
                <asp:Literal ID="strAcceptTheLicense" runat="server">
                    위 약관에 동의합니다. 
                </asp:Literal>
            </div>

            <asp:CustomValidator ID="cvt_confirm" runat="server" ErrorMessage="약관에 동의하셔야합니다." Display="None"
                ClientValidationFunction="ValidationConfirmCheckBox"></asp:CustomValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />

            <div>
                <asp:Button ID="btn_01" runat="server" Text="확인" />
            </div>
        </div>
    </form>
</body>
</html>
