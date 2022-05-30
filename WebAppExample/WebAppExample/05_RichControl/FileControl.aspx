<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileControl.aspx.cs" Inherits="WebAppExample._05_RichControl.FileControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              	<ASP:FileUpload id="upload" width="450" runat="server" />
                <asp:Button Text="버튼" runat="server" id="btn01" OnClick="btn01_Click"/>
                <asp:Label ID="resultLabel" runat="server" />
        </div>
    </form>
</body>
</html>
