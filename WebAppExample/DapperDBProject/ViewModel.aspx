<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewModel.aspx.cs" Inherits="DapperDBProject.ViewModel" %>

<%@ Register Src="~/Common/ListButton.ascx" TagPrefix="uc1" TagName="ListButton" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table runat="server" id="tbl_content">
                <tr>
                    <td>ID</td>
                    <td><asp:Label ID="lbl_id" runat="server"/></td>
                    <td>작성일</td>
                    <td><asp:Label ID="lbl_created" runat="server"/></td>
                </tr>
                <tr>
                    <td>이름</td>
                    <td><asp:Label ID="lbl_name" runat="server"/></td>
                    <td>활성여부</td>
                    <td><asp:Label ID="lbl_isActive" runat="server"/></td>
                </tr>
            </table>
        </div>
        <asp:Label id="lbl_result" runat="server" />
        <div id="div_viewBox" runat="server">
            <asp:HyperLink id="hpl_modify" runat="server" Text="수정" />
            <asp:HyperLink id="hpl_delete" runat="server" Text="삭제" />
            <uc1:ListButton runat="server" id="ListButton" />
        </div>
    </form>
</body>
</html>
