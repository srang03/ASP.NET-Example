<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReadAllReview.aspx.cs" Inherits="DevADONETProject._14_Dapper_Review.ReadAllReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddl_list" runat="server">
                <asp:ListItem text="이름" Value="NAME" />
                <asp:ListItem text="제목" Value="TITLE" />
            </asp:DropDownList>
            <asp:TextBox ID="txb_value" runat="server" />
            <asp:Button ID="btn_search" runat="server" Text="검색" OnClick="btn_search_Click" />
        </div>
        <div>
            <asp:GridView ID="grdv_list" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="번호" DataField="ID" />
                    <asp:HyperLinkField HeaderText="제목" DataTextField="TITLE"
                        DataNavigateUrlFields="ID" 
                        DataNavigateUrlFormatString="BrowseReview.aspx?id={0}" />
                    <asp:BoundField HeaderText="작성일" DataField="POSTDATE" />
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <asp:HyperLink ID="hpl_create" runat="server" Text="글쓰기" NavigateUrl="~/14_Dapper Review/CreateReivew.aspx"/>
        </div>
    </form>
</body>
</html>
