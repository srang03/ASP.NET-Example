<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListModel.aspx.cs" Inherits="DapperDBProject.ListModel" %>

<%@ Register Src="~/Common/CraeteButton.ascx" TagPrefix="uc1" TagName="CraeteButton" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>글 목록</h3>
            <div>
                <asp:DropDownList ID="ddl_select" runat="server">
                    <asp:ListItem Text="ID" Value="ID" />
                    <asp:ListItem Text="이름" Value="NAME" />
                </asp:DropDownList>
                <asp:TextBox ID="txb_value" runat="server" />
                <asp:Button ID="btn_serach" runat="server" OnClick="btn_serach_Click" Text="검색" />
            </div>
            <asp:GridView ID="grdv_list" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:HyperLinkField HeaderText="Name" DataTextField="NAME" 
                        DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ViewModel.aspx?id={0}" />
                    <asp:BoundField HeaderText="사용가능 여부" DataField="ISACTIVE" />   
                </Columns>
            </asp:GridView>
        </div>
        <hr />
        <div>
            <uc1:CraeteButton runat="server" id="CraeteButton" />
        </div>
    </form>
</body>
</html>
