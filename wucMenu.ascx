<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucMenu.ascx.cs" Inherits="waConhecendoComponentes.wucMenu" %>
            <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem Enabled="False" NavigateUrl="~/index.aspx" Text="Index" Value="Index"></asp:MenuItem>
                    <asp:MenuItem Text="Cursos" Value="Cadastros" NavigateUrl="~/wfCursos.aspx">
                    </asp:MenuItem>
                    <asp:MenuItem Text="Tabuada" Value="Consultas"></asp:MenuItem>
                    <asp:MenuItem Text="Par ou Impar" Value="Relatórios" NavigateUrl="~/ParImparButtonList.aspx">
                        <asp:MenuItem Text="par ou impar simples" Value="par ou impar simples"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/ParImparButtonList.aspx" Text="Par ou impar btuttn" Value="Par ou impar btuttn"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/wfValidation.aspx" Text="Validações" Value="Validações"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/wfDiasDeVida.aspx" Text="Dias de vida" Value="Dias de vida"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AdRotator.aspx" Text="AdRotator" Value="AdRotator"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/wfWizard.aspx" Text="Menu Wizard" Value="Menu Wizard"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/wfCadastrosListas.aspx" Text="Cadastros Listas" Value="Cadastros Listas"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
        
