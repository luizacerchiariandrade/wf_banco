<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfValidation.aspx.cs" Inherits="waConhecendoComponentes.wfValidation" %>

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
            <asp:Panel ID="Panel1" runat="server" BackColor="#3366FF" GroupingText="Validação de campos" Height="478px" Width="880px">
                <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
                <asp:TextBox ID="tbNome" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbNome" ErrorMessage="O nome é obrigatorio"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Idade"></asp:Label>
                <asp:TextBox ID="tbIdade" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbIdade" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbIdade" ErrorMessage="Valo fora do escopo" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email com erros" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
                <asp:TextBox ID="tbSenha" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbSenha" ErrorMessage="A senha é obrigatória"></asp:RequiredFieldValidator>
                <br />
                Confirmar senha
                <asp:TextBox ID="tbSenha2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbSenha2" ErrorMessage=" A confirmação da senha é obrigatoria"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbSenha" ControlToValidate="tbSenha2" ErrorMessage="as senhas devem ser iguais"></asp:CompareValidator>
                <br />
                <br />
                <br />
                <asp:Button ID="btEnviar" runat="server" Text="Enviar" />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
