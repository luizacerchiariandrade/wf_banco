<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfWizard.aspx.cs" Inherits="waConhecendoComponentes.wfWizard" %>

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
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="332px" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="411px">
                <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                <SideBarButtonStyle ForeColor="White" />
                <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                <WizardSteps>
                    <asp:WizardStep runat="server" title="Dados Básicos">
                        <asp:Label ID="Label1" runat="server" Text="Nome-"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbNome" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="cpf"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbCpf" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="RG"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbRg" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Endereço">
                        <asp:Label ID="CEP" runat="server" Text="Cep"></asp:Label>
                        <br />
                        <asp:TextBox ID="TbCep" runat="server" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
                        <br />
                        <asp:Label ID="Estado" runat="server" Text="Estado"></asp:Label>
                        <br />
                        <asp:TextBox ID="TbEstado" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Cidade" runat="server" Text="Cidade"></asp:Label>
                        <br />
                        <asp:TextBox ID="TbCidade" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="End"></asp:Label>
                        <br />
                        <asp:TextBox ID="TbEndereco" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Bairro"></asp:Label>
                        <br />
                        <asp:TextBox ID="TbBairro" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
