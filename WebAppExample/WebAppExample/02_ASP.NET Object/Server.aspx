





<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Server.aspx.cs" Inherits="WebAppExample._02_ASP.NET_Object.Server" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                현재 파일의 물리적인 전체 경로 : 
                <asp:Label ID="lbl_info1" runat="server" />
            </div>
            <div>
                현재 스크립트 파일의 루트 경로 : 
                <asp:Label ID="lbl_info2" runat="server" />
            </div>
            
        </div>
    </form>
</body>
</html>
