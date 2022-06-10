<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteModel.aspx.cs" Inherits="DapperDBProject.DeleteModel" %>

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
          
            <div id="div_deletebox" runat="server">
                 <h3>정말 삭제하시겠습니까?</h3>
                <asp:Button runat="server" ID="btn_delete" Text="삭제" OnClick="btn_delete_Click" />
                <asp:HyperLink runat="server" ID="hpl_back" Text="뒤로가기" />
                 <uc1:ListButton runat="server" ID="ListButton" />
            </div>
            <div id="div_resultbox" runat="server">
                <asp:Label ID="lbl_message" runat="server" />
                <uc1:ListButton runat="server" ID="ListButton1" />
            </div>
        </div>
    </form>
</body>
</html>
