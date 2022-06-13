<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateReview.aspx.cs" Inherits="DevADONETProject._14_Dapper_Review.UpdateReview" %>

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
                </tr>
                <tr>
                    <td>Name</td>
                    <td><asp:Label ID="lbl_name" runat="server" /></td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td><asp:TextBox ID="txb_title" runat="server" /></td>
                </tr>
            </table>
        </div>
        <div>
            <asp:button ID="btn_save" runat="server" Text="저장" OnClick="btn_save_Click"/>
            <asp:button ID="btn_back" runat="server" Text="뒤로가기" OnClick="btn_back_Click"/>
        </div>
    </form>
</body>
</html>
