<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StandardControl.aspx.cs" Inherits="WebAppExample._03_Control.StandardControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Standard Control</h1>
            <h2>[1] 순수 HTML</h2>
            <input type="button" name="btn" value="버튼1" id="btnInput"/>
            <h2>[2] runat 속성 추가 서버 컨트롤</h2>
            <input type="button" id="btnInput2" value="버튼2" runat="server"/>
            <h3>[3] ASP.NET 표준 컨트롤을 사용해서 버튼 만들기</h3>
            <asp:button ID="btnInput3" Text="버튼3" runat="server" />
        </div>
        <div>
            <asp:Label ID="lbl_dateTime" runat="server" />
        </div>

        <div>
            <div><asp:TextBox ID="txt_id" TextMode="SingleLine" runat="server" /></div>
            <div><asp:TextBox ID="txt_pw" TextMode="Password" runat="server" /></div>
            <div><asp:TextBox ID="txt_description" TextMode="MultiLine" runat="server" /></div>
        </div>

        <div>
            <div>
                <asp:TextBox ID="txt_inputNumber" runat="server" /> 
                <asp:Button ID="btn_increaseNumber" runat="server" OnClick="btn_increaseNumber_Click" Text="+" />
                <asp:Button ID="btn_decreaseNumber" runat="server" Onclick="btn_decreaseNumber_Click" Text="-"/>

            </div>
        </div>
    </form>
</body>
</html>

