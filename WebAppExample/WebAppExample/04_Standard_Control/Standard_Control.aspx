<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Standard_Control.aspx.cs" Inherits="WebAppExample._04_Standard_Control.Standard_Control" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink runat="server" ID="hlk_url" NavigateUrl="https://www.naver.com/" AccessKey="A">
                네이버 바로가기
            </asp:HyperLink> 
        </div>
        <div>
            <asp:Table ID="Table1" runat="server" BorderWidth="1px">
                <asp:TableRow>
                    <asp:TableCell>
                        1행 1열 테이블
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <hr />
            <asp:Table ID="Table2" runat="server">
            </asp:Table>
        </div>
        <div>
            <asp:BulletedList runat="server" ID="bll_favorite" BulletStyle="UpperAlpha" DisplayMode="LinkButton" OnClick="bll_favorite_Click">
                <asp:ListItem Text="C#" Value="t1" />
                <asp:ListItem Text="ASP.NET" Value="t1" />
            </asp:BulletedList>

        </div>

        <div>   
            <asp:DropDownList ID="ddl_phone" runat="server">
                <asp:ListItem Value="1" Text="010" />
                <asp:ListItem Value="2" Text="2201" />
                <asp:ListItem Value="3" Text="6514" />
            </asp:DropDownList>
        </div>

        <hr />
        <div>
            <asp:DropDownList ID="ddl_jobs" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_jobs_SelectedIndexChanged">
                <asp:ListItem Text="회사원" Value="1"/>
                <asp:ListItem Text="개발자" Value="2"/>
                <asp:ListItem Text="공무원" Value="3"/>
            </asp:DropDownList>
   
        </div>
                 <hr />
            <asp:Label runat="server" ID="lbl_selected" Text="123"/>
               
    </form>
</body>
</html>
