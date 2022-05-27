<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiddenField.aspx.cs" Inherits="WebAppExample._04_Standard_Control.HiddenField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfd_01" runat="server" />
            <asp:Button ID="btn_01" runat="server" OnClick="btn_01_Click" text="버튼"/>
        </div>
    </form>
</body>
</html>
