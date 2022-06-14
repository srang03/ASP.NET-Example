<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmGridView.aspx.cs" Inherits="DevADONETProject._15_DataControl.FrmGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gv_list" runat="server" AutoGenerateColumns="true" DataSourceID="sds_list" DataKeyNames="ID">
                <Columns>
                    
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="sds_list" runat="server" ConnectionString="<%$ ConnectionStrings:DevADONETReviewConnectionString %>" 
                SelectCommand="SELECT ID, TITLE FROM [dbo].[Memos] ORDER BY ID DESC"/>
        </div>
    </form>
</body>
</html>
