<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdRotator.aspx.cs" Inherits="WebAppExample._05_RichControl.AdRotator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator Id="adrotator" runat="server" AdvertisementFile="~/05_RichControl/FrmAdRotatora.xml" Width="960px" Height="360px"/>
        </div>
    </form>
</body>
</html>
