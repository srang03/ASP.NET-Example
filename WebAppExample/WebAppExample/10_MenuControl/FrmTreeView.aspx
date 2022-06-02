<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmTreeView.aspx.cs" Inherits="WebAppExample._10_MenuControl.FrmTreeView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Tree Menu</h2>
            <asp:TreeView runat="server" ID="trv_main" OnSelectedNodeChanged="trv_main_SelectedNodeChanged">
                <Nodes>
                    <asp:TreeNode text="Home" Value="Home">
                        <asp:TreeNode Text="게시판" Value="Board" />
                        <asp:TreeNode Text="강의실" Value="Lecture" />
                    </asp:TreeNode>
                     <asp:TreeNode text="Home2" Value="Homet2">
                         </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
        <div>
            <asp:Button ID="btn_addNode" runat="server" text="노드 추가" OnClick="btn_addNode_Click" />
        </div>
    </form>
</body>
</html>
