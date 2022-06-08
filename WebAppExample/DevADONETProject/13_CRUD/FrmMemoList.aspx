<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoList.aspx.cs" Inherits="DevADONETProject._13_CRUD.FrmMemoList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>메모 리스트</h3>
            <div>
                <asp:DropDownList ID="ddl_searchCategory" runat="server">
                    <asp:ListItem Text="이름" Value="NAME"></asp:ListItem>
                    <asp:ListItem Text="제목" Value="TITLE"></asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txb_searchValue" runat="server" />
                <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click"  Text="검색"/>
            </div>
            <asp:GridView ID="gdv_memos" runat="server" AutoGenerateColumns="false">

                <Columns>
                    <asp:BoundField HeaderText="번호" DataField="ID" />
                    <asp:BoundField HeaderText="작성자" DataField="NAME" />
                    <asp:HyperLinkField HeaderText="제목" 
                        DataTextField="TITLE" 
                        DataNavigateUrlFormatString="FrmMemoView.aspx?id={0}"
                        DataNavigateUrlFields="ID" 
                         /> 
                    <asp:TemplateField HeaderText="작성일">
                        <ItemTemplate>
                            <%# Eval("POSTDATE") %>
                        </ItemTemplate>
                    </asp:TemplateField> 
                </Columns>
            </asp:GridView>
            <hr/>
            <asp:HyperLink ID="hpl_write" Text="글쓰기" runat="server" NavigateUrl="~/13_CRUD/FrmMemoCreate.aspx" />
        </div>
    </form>
</body>
</html>
