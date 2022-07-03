<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListMemo.aspx.cs" Inherits="WebMemo.MemoBoard.ListMemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:LoginView ID="lgv_view" runat="server">
            <AnonymousTemplate>
                <asp:LoginStatus ID="lgs_anonymous" runat="server" LoginText="로그인" /> | <asp:HyperLink ID="hl_signup" runat="server" NavigateUrl="~/Signup.aspx" Text="회원가입"/>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <asp:LoginStatus ID="lgs_logined" runat="server" LoginText="로그아웃"  Visible="false"/>
                <asp:HyperLink ID="hpl_logout" runat="server" NavigateUrl="~/Logout.aspx" /> |
                <asp:LoginName ID="lgn_name" runat="server" />
            </LoggedInTemplate>
        </asp:LoginView>
        <h3>게시판 리스트</h3>
        <div>
            <asp:GridView ID="dg_list" runat="server" AutoGenerateColumns="false" DataKeyNames="ID" CssClass="table table-bordered table-hover table-condensed table-striped table-responsive">
                <Columns>
                    <asp:TemplateField HeaderText="번호" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%# Eval("ID") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="제목" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" NavigateUrl='<%# "BrowseMemo.aspx?id=" + Eval("ID") %>'> <%# Eval("TITLE") %> </asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="작성일" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%# Eval("CREATED") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="작성자" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                          
                        </ItemTemplate>
                            
                    </asp:TemplateField>
                </Columns>
                
            </asp:GridView>
        </div>
        <div>
            <asp:HyperLink ID="lbtn_createMemo" Text="글쓰기" NavigateUrl="~/MemoBoard/CreateMemo.aspx" runat="server" />
        </div>
    </form>
</body>
</html>
