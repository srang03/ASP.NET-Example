<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceHolder.aspx.cs" Inherits="WebAppExample._05_RichControl.PlaceHolder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="ctlPlaceHolder" runat="server"></asp:PlaceHolder>
            <hr />
            <asp:Label ID="lbl_display" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
