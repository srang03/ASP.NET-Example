<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateModel.aspx.cs" Inherits="DapperDBProject.CreateModel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name : </td>
                    <td><asp:TextBox ID="txb_name" runat="server" /></td>
                </tr>
                <tr>
                    <td>IsAvtive : </td>
                    <td>
                        <asp:CheckBox ID="ckb_active" runat="server" Text="Active"/>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Button runat="server" ID="btn_crateModel" OnClick="btn_crateModel_Click" Text="생성" />
            <hyperlink runat="server" Id="hpl_back" Text="뒤로가기" />
        </div>
    </form>
</body>
</html>
