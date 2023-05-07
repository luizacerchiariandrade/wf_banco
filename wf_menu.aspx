<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_menu.aspx.cs" Inherits="waConhecendoComponentes.wf_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu3" runat="server" DataSourceID="Web">
            </asp:Menu>
            <asp:SiteMapDataSource ID="Web" runat="server" />
        </div>
        <asp:Menu ID="Menu2" runat="server" DataSourceID="Web">
        </asp:Menu>
    </form>
</body>
</html>
