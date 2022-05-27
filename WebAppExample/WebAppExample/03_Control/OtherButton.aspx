<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtherButton.aspx.cs" Inherits="WebAppExample._03_Control.OtherButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="lbtn_DotNet" runat="server" OnClick="lbtn_DotNet_Click">사이트 이동</asp:LinkButton>
        </div>
        <div>
            <asp:ImageButton ID="ImgBtn_DotNet" runat="server" OnClick="ImgBtn_DotNet_Click" AlternateText="글쓰기" ToolTip="텍스트"  />
        </div>
    </form>
</body>
</html>
