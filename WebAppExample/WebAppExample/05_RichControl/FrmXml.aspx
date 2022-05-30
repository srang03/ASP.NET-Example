<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmXml.aspx.cs" Inherits="WebAppExample._05_RichControl.FrmXml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Xml ID="xmlCompany" runat="server" DocumentSource="~/05_RichControl/frmXml.xml" TransformSource="~/05_RichControl/FrmXml.xsl">

            </asp:Xml>
        </div>
    </form>
</body>
</html>
