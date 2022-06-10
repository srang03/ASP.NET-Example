<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyModel.aspx.cs" Inherits="DapperDBProject.ModifyModel" %>


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
                    <td>ID</td>
                    <td><asp:Label ID="lbl_id" runat="server" /></td>
                    <td>Name</td>
                    <td><asp:TextBox ID="txb_name" runat="server" /></td>
                </tr>
                <tr>
                    <td>Created</td>
                    <td><asp:Label ID="lbl_created" runat="server" /></td>
                    <td>IsActive</td>
                    <td>
                        <asp:CheckBox runat="server" ID="ckb_active" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Button Text="저장" runat="server" OnClick="btn_save_Click" ID="btn_save"/>
            <asp:Button Text="뒤로가기" runat="server" id="btn_back" OnClick="btn_back_Click" />
       
        </div>
    </form>
</body>
</html>
