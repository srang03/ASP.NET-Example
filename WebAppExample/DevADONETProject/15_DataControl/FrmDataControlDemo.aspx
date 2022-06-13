<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="FrmDataControlDemo.aspx.cs" 
    Inherits="WebAppExample._15_DataControl.FrmDataControlDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>DataControl Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="Name" 
                DataValueField="ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString=
                    '<%$ ConnectionStrings:DevADONETReviewConnectionString %>' 
                SelectCommand=
                    "SELECT [ID], [Name] FROM [Memos] ORDER BY [ID] DESC">

            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
