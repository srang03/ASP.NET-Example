<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmUserControl.aspx.cs" Inherits="WebAppExample._07_MasterPage.UserControl.FrmUserControl" %>

<%@ Register Src="~/07_MasterPage/UserControl/CategoryUserControl.ascx" TagPrefix="uc1" TagName="CategoryUserControl" %>
<%@ Register Src="~/07_MasterPage/UserControl/CatelogUserControl.ascx" TagPrefix="uc1" TagName="CatelogUserControl" %>
<%@ Register Src="~/07_MasterPage/UserControl/CopyrightUserControl.ascx" TagPrefix="uc1" TagName="CopyrightUserControl" %>
<%@ Register Src="~/07_MasterPage/UserControl/NavigatorUserControl.ascx" TagPrefix="uc1" TagName="NavigatorUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style> 
        div{
            border: 1px solid red;
            padding :10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <uc1:NavigatorUserControl runat="server" id="NavigatorUserControl1" />
                </div>
            </div>
             <div class="row" style="height:200px; background:#b4b4b4;">
                <div class="col-md-3">
                    <uc1:CategoryUserControl runat="server" id="CategoryUserControl1" />
                </div>
                  <div class="col-md-9">
                      <uc1:CatelogUserControl runat="server" id="CatelogUserControl1" />
                </div>
            </div>
             <div class="row">
                <div class="col-md-12">
                    <uc1:CopyrightUserControl runat="server" id="CopyrightUserControl1" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
