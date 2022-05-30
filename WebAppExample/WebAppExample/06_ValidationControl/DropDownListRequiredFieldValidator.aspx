<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownListRequiredFieldValidator.aspx.cs" Inherits="WebAppExample._06_ValidationControl.DropDownListRequiredFieldValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddl_value" runat="server"></asp:DropDownList>
            <asp:Button ID="btn_select" runat="server" Text="선택" OnClick="btn_select_Click" />
            <hr />

            <asp:Label ID="lbl_select" runat="server" Text="" />

            <asp:RequiredFieldValidator ID="rfv_select" runat="server" ControlToValidate="ddl_value" ErrorMessage="선택해주세요" InitialValue="-1" Display="None">
            </asp:RequiredFieldValidator>

            <asp:ValidationSummary ID="vds_select" runat="server" ShowMessageBox="true" ShowSummary="false" />
        </div>
    </form>
</body>
</html>
