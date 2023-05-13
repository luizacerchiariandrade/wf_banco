<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdRotator.aspx.cs" Inherits="waConhecendoComponentes.AdRotator" %>

<%@ Register src="wucMenu.ascx" tagname="wucMenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <uc1:wucMenu ID="wucMenu1" runat="server" />
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Beta/propaganda.xml" />
            <br />
        </div>
        
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="151px" ImageUrl="~/images/image1.png" OnClick="ImageButton1_Click" ToolTip="Clique aqui para saber mais" Width="277px" />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="151px" ImageUrl="~/images/image2.png" OnClick="ImageButton2_Click" ToolTip="Clique aqui para saber mais" Width="270px" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Label ID="Label1" runat="server" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Text="www.google.com  "></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Google é um site dedicado a buscas"></asp:Label>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.google.com.br/" Target="_blank">Faça suas pesquisas no google</asp:HyperLink>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnVoltarClick">Voltar</asp:LinkButton>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="www.yahoo.com.br  "></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="O Yahoo é um site de noticias e muito mais"></asp:Label>
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://br.search.yahoo.com/?fr2=p:fprd,mkt:br" Target="_blank">Faça suas pesquisas no yahoo</asp:HyperLink>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="btnVoltarClick">Voltar</asp:LinkButton>
            </asp:View>
        </asp:MultiView>
        <div>
        </div>
    </form>
</body>
</html>