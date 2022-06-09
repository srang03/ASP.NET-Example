<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoModify.aspx.cs" Inherits="DevADONETProject._13_Review.FrmMemoModify" %>

<%@ Register Src="~/13_Review/btn_listMemo.ascx" TagPrefix="uc1" TagName="btn_listMemo" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div_inputBox" runat="server">
            <div><asp:Label ID="lbl_name" runat="server"></asp:Label></div>
            <div><asp:Label ID="lbl_email" runat="server"></asp:Label></div>
            <div><asp:Label ID="lbl_postDate" runat="server"></asp:Label></div>
            <div><asp:TextBox ID="txb_title" runat="server"></asp:TextBox></div>
        </div>
        <div id="div_bottomBox" runat="server">
            <asp:Button ID="btn_modify" runat="server" Text="저장" OnClick="btn_modify_Click" />
            <asp:Button ID="btn_back" runat="server" Text="취소" OnClick="btn_back_Click" />
            <uc1:btn_listMemo runat="server" ID="btn_listMemo" />
        </div>
        <div>
            <asp:Label ID="lbl_message" runat="server" />
        </div>
    </form>
</body>
</html>
