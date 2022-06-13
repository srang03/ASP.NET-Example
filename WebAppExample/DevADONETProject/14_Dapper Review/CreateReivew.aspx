<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateReivew.aspx.cs" Inherits="DevADONETProject._14_Dapper_Review.CreateReivew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="table table-striped">
                
                <tr>
                    <td>이름 : </td><td><asp:TextBox ID="txb_name" runat="server" placeholder="이름 입력"/></td>
                </tr>
                <tr>
                    <td>제목 : </td><td><asp:TextBox ID="txb_title" runat="server" placeholder="제목 입력" /></td>
                </tr>
            </table>
            <label id="lbl_message" runat="server" />
        </div>
            <asp:Button ID="btn_save" runat="server" text="저장" OnClick="btn_save_Click" /> 
            <asp:Button Text="취소" runat="server" id="btn_cancel" OnClick="btn_cancel_Click"/>
        <div>

        </div>
    </form>
</body>
</html>
