<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParImparButtonList.aspx.cs" Inherits="waConhecendoComponentes.ParImparReserva" %>

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
            <asp:BulletedList ID="blLista" runat="server" BorderStyle="None" BulletStyle="Square" DisplayMode="LinkButton" OnClick="clickLista" Visible="False">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Calcula o fatorial</asp:ListItem>
            </asp:BulletedList>
        </div>
        
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Par ou impar</asp:ListItem>
            <asp:ListItem>Fatorial</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:RadioButtonList ID="rdList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
            <asp:ListItem>2Par</asp:ListItem>
            <asp:ListItem>2Fatorial</asp:ListItem>
        </asp:RadioButtonList>
        
        <br />
        <asp:Panel ID="pnParOuImpar" runat="server"  Visible="false">
            <asp:Label ID="lbParOuImpar" runat="server" Text="Verifica se é par ou impar"></asp:Label>
            <asp:TextBox ID="txtValorPn1" runat="server"></asp:TextBox>
            <asp:Button ID="btnValor1" runat="server" Text="Verificar" OnClick="btnValor1_Click" />
            <br />
            <asp:Label ID="LResp1" runat="server" Text="Informe um numero para checar se é par ou impar"></asp:Label>
        </asp:Panel>
           <br />
        <asp:Panel ID="pnFatorial" runat="server" Visible="false">
             <asp:Label ID="lbFatorial" runat="server" Text="Verifica se é fatorial"></asp:Label>
            <asp:TextBox ID="txtValorPn2" runat="server"></asp:TextBox>
            <asp:Button ID="btnValor2" runat="server" Text="Verificar" OnClick="btnValor2_Click" />
             <br />
             <asp:Label ID="LResp2" runat="server" Text="Informe um numero para checar seu fatorial"></asp:Label>
             <br />
             <asp:Menu ID="Menu1" runat="server" DataSourceID="Web1">
             </asp:Menu>
        </asp:Panel>
    </form>
</body>
</html>
