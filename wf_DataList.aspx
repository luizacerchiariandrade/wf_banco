<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestre.Master" AutoEventWireup="true" CodeBehind="wf_DataList.aspx.cs" Inherits="waConhecendoComponentes.DataList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" Text="Nome"></asp:Label>
    <br />
    <asp:TextBox ID="txtNome" runat="server" Height="25px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:Button ID="btnInserir" runat="server" OnClick="btnInserir_Click" Text="Inserir" Width="68px" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Lista de contatos"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            Nome:
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
            &nbsp;-<br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nome], [Email], [Id] FROM [Contato]"></asp:SqlDataSource>
</asp:Content>
