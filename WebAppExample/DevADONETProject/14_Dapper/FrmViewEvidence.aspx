<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmViewEvidence.aspx.cs" Inherits="DevADONETProject._14_Dapper.FrmViewEvidence" %>

<%@ Register Src="~/14_Dapper/Common/ListEvidence.ascx" TagPrefix="uc1" TagName="ListEvidence" %>




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
                <tr><td>ID</td><td><asp:Label ID="lbl_id" runat="server" /></td></tr>
                <tr><td>이름</td><td><asp:Label ID="lbl_name" runat="server" /></td></tr>
                <tr><td>내용</td><td><asp:Label ID="lbl_content" runat="server" /></td></tr>
                <tr><td>작성일</td><td><asp:Label ID="lbl_createDate" runat="server" /></td></tr>
            </table>
        </div>
        <div id="div_viewbox" runat="server">
            <asp:HyperLink ID="hpl_edit" runat="server" text="글 수정"/>
            <asp:HyperLink ID="hpl_delete" runat="server" text="글 삭제"/>
            <uc1:ListEvidence runat="server" ID="ListEvidence1" />
        </div>
    </form>
</body>
</html>
