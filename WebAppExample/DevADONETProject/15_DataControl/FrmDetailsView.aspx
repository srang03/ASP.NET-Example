<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDetailsView.aspx.cs" Inherits="DevADONETProject._15_DataControl.FrmDetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView runat="server" ID="dv_list" Height="100px" Width="200px" DataSourceID="sds_detailView" AutoGenerateRows="true" DataKeyNames="ID">
                <Fields>
                   
                </Fields>
            </asp:DetailsView>
            
            <asp:SqlDataSource ID="sds_detailView" runat="server" 
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
