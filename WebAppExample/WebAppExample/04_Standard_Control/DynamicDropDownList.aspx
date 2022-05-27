<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicDropDownList.aspx.cs" Inherits="WebAppExample._04_Standard_Control.DynamicDropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="phd_01" runat="server"></asp:PlaceHolder>
            <asp:Button ID="btnGet" runat="server" Text="text값 가져오기" OnClick="btnGet_Click" />
            <asp:Label ID="lbl_01" runat="server" />
        </div>
    </form>
</body>
</html>
