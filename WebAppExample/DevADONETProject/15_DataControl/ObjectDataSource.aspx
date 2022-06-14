<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjectDataSource.aspx.cs" Inherits="DevADONETProject._15_DataControl.ObjectDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gv_list" runat="server" DataSourceID="ssd_list" />
            <asp:ObjectDataSource ID="ssd_list" runat="server" SelectMethod="GetMemos" 
                TypeName="DevADONETProject._15_DataControl.ObjectDataSourceClass"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
