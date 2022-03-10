<%@ Page Title="" Language="C#" MasterPageFile="~/auto.Master" AutoEventWireup="true" CodeBehind="calculo.aspx.cs" Inherits="ExSAuto.calculo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style13 {
        font-size: large;
        font-weight: bold;
    }
        .auto-style14 {
            font-family: Arial;
            font-size: 11pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br class="auto-style13" />
    <span class="auto-style13">Cálculo de Financiamento</span></p>
<p>
    Todos os Empréstimos têm até 5 Anos</p>
<p>
    Valor:
</p>
<p class="text-center">
    <asp:TextBox ID="TextBox78" runat="server" OnTextChanged="TextBox78_TextChanged"></asp:TextBox>
</p>
<p>
    Juros:</p>
<p class="text-center">
    <asp:TextBox ID="TextBox79" runat="server" CssClass="auto-style14" Width="128px"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Calcular" Width="124px" />
</p>
    <p>
        &nbsp;</p>
<p>
    Dados do Espréstimo:</p>
<p>
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>
<p>
    <asp:Label ID="Label2" runat="server"></asp:Label>
</p>
<p>
</p>
    <p>
</p>
</asp:Content>
