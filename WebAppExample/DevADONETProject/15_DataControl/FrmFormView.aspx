<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmFormView.aspx.cs" Inherits="DevADONETProject._15_DataControl.FrmFormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="fv_list" runat="server"
                DataSourceID="sds_memo" DataKeyNames="ID">
                <ItemTemplate>
                    작성자 : <%# Eval("NAME") %> <br />
                    메모 : <%# Eval("TITLE") %> <br />
                </ItemTemplate>
            </asp:FormView>    
            <asp:SqlDataSource ID="sds_memo" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DevADONETReviewConnectionString %>" 
                SelectCommand="SELECT * FROM [dbo].[Memos] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
