<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateMemo.aspx.cs" Inherits="WebMemo.MemoBoard.CreateMEmo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>글쓰기</h3>
        <div>
            <table>
                <tr>
                    <td>
                        제목
                    </td>
                    <td>
                        <asp:TextBox ID="txb_title" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        내용
                    </td>
                    <td>
                        <asp:TextBox ID="txb_content" runat="server" />
                    </td>
                </tr> 
            </table>
            <asp:Label id="lbl_message" runat="server" />
            <asp:button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="저장" />
        </div>
        <div>
            <asp:HyperLink runat="server" ID="hyl_memoList" Text="글목록" NavigateUrl="~/MemoBoard/ListMemo.aspx"></asp:HyperLink>

        </div>
    </form>
</body>
</html>
