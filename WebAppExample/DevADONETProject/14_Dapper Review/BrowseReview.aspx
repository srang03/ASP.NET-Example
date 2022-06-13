<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowseReview.aspx.cs" Inherits="DevADONETProject._14_Dapper_Review.BrowseReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>ID</td>
                    <td>
                        <asp:Label ID="lbl_id" runat="server" /></td>
                </tr>
                <tr>
                    <td>NAME</td>
                    <td>
                        <asp:Label ID="lbl_name" runat="server" /></td>
                </tr>
                <tr>
                    <td>TITLE</td>
                    <td>
                        <asp:Label ID="lbl_title" runat="server" /></td>
                </tr>
                <tr>
                    <td>POSTDATE</td>
                    <td>
                        <asp:Label ID="lbl_postDate" runat="server" /></td>
                </tr>
                <tr>
                    <td>POSTIP</td>
                    <td>
                        <asp:Label ID="lbl_PostIp" runat="server" /></td>
                </tr>
            </table>
        </div>
        <div id="div_detailBox" runat="server">
            <asp:Button Text="글삭제" runat="server" id="btn_delete" OnClick="btn_delete_Click"/>
            <asp:Button Text="글수정" runat="server" id="btn_modify" OnClick="btn_modify_Click"/>
            <asp:HyperLink Text="글목록" runat="server" NavigateUrl="~/14_Dapper Review/ReadAllReview.aspx" />

        </div>
    </form>
</body>
</html>
