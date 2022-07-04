<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowseMemo.aspx.cs" Inherits="WebMemo.MemoBoard.BrowseMemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
        <tr>
            <td>제목</td>
            <td><asp:Label ID="lbl_title" runat="server"/></td>
        </tr>
         <tr>
            <td>작성자</td>
            <td><asp:Label ID="lbl_name" runat="server"/></td>
        </tr>
        <tr>
            <td>작성일</td>
            <td><asp:Label ID="lbl_date" runat="server"/></td>
        </tr>  
        <tr>
            <td>내용</td>
            <td><asp:Label ID="lbl_content" runat="server"/></td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>
