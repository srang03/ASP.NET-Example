<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmListEvidence.aspx.cs" Inherits="DevADONETProject._14_Dapper.FrmListEvidence" %>

<%@ Register Src="~/14_Dapper/Common/CreateEvidence.ascx" TagPrefix="uc1" TagName="CreateEvidence" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdv_list" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="번호" DataField="ID" />
                    <asp:HyperLinkField HeaderText="이름" DataTextField="NAME"
                        DataNavigateUrlFormatString="FrmViewEvidence.aspx?id={0}" 
                        DataNavigateUrlFields="ID" />
                    <asp:BoundField HeaderText="작성일" DataField="CREATEDDATE" />
                    
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <uc1:CreateEvidence runat="server" id="CreateEvidence" />
        </div>
    </form>
</body>
</html>
