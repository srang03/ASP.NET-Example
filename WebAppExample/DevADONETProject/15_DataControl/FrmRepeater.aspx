<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRepeater.aspx.cs" Inherits="DevADONETProject._15_DataControl.FrmRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Repeater</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="rpt_memoList" runat="server" DataSourceId="sds_memoList">
                <HeaderTemplate>
                    <table border="0">
                        <tr><td>제목</td></tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr> <td><%# Eval("TITLE") %> </td></tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr> <td style="background-color:yellow;"><%# Eval("TITLE") %> </td></tr>
                </AlternatingItemTemplate>
                <SeparatorTemplate>
                    <tr> <td style="background-color:red;"><%# Eval("TITLE") %> </td></tr>
                </SeparatorTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="sds_memoList" runat="server" 
                ConnectionString="Data Source=DESKTOP-7T67K5V;Initial Catalog=DevADONETReview;User ID=root;Password=root" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT [Name], [ID], [TITLE] FROM [Memos] ORDER BY [ID] DESC">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
