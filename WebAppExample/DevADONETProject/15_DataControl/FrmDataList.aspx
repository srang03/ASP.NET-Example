<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDataList.aspx.cs" Inherits="DevADONETProject._15_DataControl.FrmDataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DataList Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="dl_list" runat="server" DataSourceID="sds_list">
                <HeaderTemplate>
                    <span>이름</span>
                    <span>제목</span>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# Eval("NAME") %>
                    <%# Eval("TITLE") % >
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="sds_list" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DevADONETReviewConnectionString %>" 
                SelectCommand="SELECT ID, NAME, TITLE FROM dbo.Memos ORDER BY ID DESC">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
