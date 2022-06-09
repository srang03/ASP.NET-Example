<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmEditEvidence.aspx.cs" Inherits="DevADONETProject._14_Dapper.FrmEditEvidence" %>

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
                <tr><td>내용</td><td><asp:TextBox ID="txb_content" runat="server"/></td></tr>
                <tr><td>작성일</td><td><asp:Label ID="lbl_createDate" runat="server" /></td></tr>
            </table>
        </div>
        <div>
            <asp:Label ID="lbl_message" runat="server" />
        </div>
        <div>
            <asp:Button ID="btn_save" runat="server" Text="저장" OnClick="btn_save_Click" />
            <asp:HyperLink ID="hpl_back" runat="server" Text="뒤로가기" />
            <uc1:ListEvidence runat="server" ID="ListEvidence" />
        </div>
        
    </form>
</body>
</html>
