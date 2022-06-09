<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmOrm.aspx.cs" Inherits="DevADONETProject._14_Dapper.FrmOrm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>데이터 입력</h2>
            <div>이름 : <asp:TextBox ID="txb_Name" runat="server"></asp:TextBox></div>
            <div>설명 : <asp:TextBox ID="txb_Description" runat="server"></asp:TextBox></div>
            <div>주소 : <asp:TextBox ID="txb_Address" runat="server"></asp:TextBox></div>
            <div>번호 : <asp:TextBox ID="txb_Phone" runat="server"></asp:TextBox></div>
            <div><asp:Button ID="btn_add" runat="server" Text="저장" OnClick="btn_add_Click" /></div>
            <hr />

            <h2>데이터 출력</h2>
            <asp:GridView ID="grv_list" runat="server">
                
            </asp:GridView>
        </div>
    </form>
</body>
</html>
