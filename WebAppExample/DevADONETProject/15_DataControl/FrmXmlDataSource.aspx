<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmXmlDataSource.aspx.cs" Inherits="DevADONETProject._15_DataControl.FrmXmlDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="dl_list" runat="server" DataSourceID="xds_list">
                <ItemTemplate>
                    <em><%# XPath("title") %></em> : <%# XPath("description") %>
                </ItemTemplate>
            </asp:DataList>
            <asp:XmlDataSource DataFile="FrmXmlDataSource.xml" ID="xds_list" runat="server" />
        </div>
    </form>
</body>
</html>
