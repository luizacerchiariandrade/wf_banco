<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="waConhecendoComponentes.index" %>

<%@ Register src="wucMenu.ascx" tagname="wucMenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 426px;
        }
        .auto-style2 {
            width: 389px;
        }
        .auto-style3 {
            width: 409px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <uc1:wucMenu ID="wucMenu1" runat="server" />

            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/wfTabuada.aspx">Tabuada</asp:HyperLink>
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="177px" ImageUrl="~/images/image1.png" PostBackUrl="~/wfCursos.aspx" Width="320px" />
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/wfParOuImpar.aspx">Par ou Impar</asp:HyperLink>
                        <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="177px" ImageUrl="~/images/image2.png" PostBackUrl="~/wfCursos.aspx" Width="320px" />
                    </td>
                    <td class="auto-style1">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/wfDiasDeVida.aspx">Calculos de vida</asp:HyperLink>
                        <br />
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="177px" ImageUrl="~/images/image3.png" OnClick="ImageButton3_Click" PostBackUrl="~/wfCursos.aspx" Width="320px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
