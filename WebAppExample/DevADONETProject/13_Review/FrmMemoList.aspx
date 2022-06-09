<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoList.aspx.cs" Inherits="DevADONETProject._13_Review.FrmMemoList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>글목록</h2>
            <asp:Button runat="server" ID="btn_createMemo" OnClick="btn_createMemo_Click"  Text="글생성"/>
            <hr />
            <div>
                <asp:DropDownList runat="server" ID="ddl_searchField">
                    <asp:ListItem Text="이름" Value="NAME"></asp:ListItem>
                    <asp:ListItem Text="제목" Value="TITLE"></asp:ListItem>
                </asp:DropDownList>

                <asp:TextBox id="txb_searchValue" runat="server" />
                <asp:Button ID="btn_search" runat="server" Text="검색" OnClick="btn_search_Click" />
            </div>
            
            <asp:GridView ID="grd_data" runat="server" AutoGenerateColumns="false">
               <Columns>
                   <asp:BoundField HeaderText="글번호" DataField="ID" />
                   <asp:BoundField HeaderText="작성자" DataField="NAME" />
                   <asp:HyperLinkField HeaderText="제목" DataTextField ="TITLE"
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
            <div>
                <asp:Label ID="lbl_message" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
