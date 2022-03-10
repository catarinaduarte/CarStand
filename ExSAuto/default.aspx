<%@ Page Title="" Language="C#" MasterPageFile="~/auto.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ExSAuto._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        font-style: italic;
        font-weight: bold;
    }
    .auto-style10 {
        text-align: justify;
    }
    .auto-style11 {
        font-size: small;
    }
    .auto-style12 {
        font-family: Arial, Helvetica, sans-serif;
        color: #000080;
    }
        .auto-style16 {
        width: 101%;
        background-color: #CCCCCC;
        height: 21px;
    }
    .auto-style19 {
        width: 127px;
    }
    .auto-style20 {
        width: 123px;
    }
    .auto-style21 {
        width: 87px;
    }
    .auto-style27 {
        width: 220px;
    }
    .auto-style28 {
        width: 128px;
    }
    .auto-style29 {
        width: 154px;
    }
    .auto-style30 {
        width: 208px;
    }
    .auto-style31 {
        width: 189px;
    }
    .auto-style32 {
        width: 281px
    }
    .auto-style33 {
        width: 147px;
    }
    .auto-style34 {
        font-family: Arial;
        font-style: italic;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
    <tr>
        <td class="auto-style32">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Todas as Marcas</asp:LinkButton>
        </td>
        <td class="auto-style33">
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click1">Avalon</asp:LinkButton>
        </td>
        <td class="auto-style19">
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click1">BMW</asp:LinkButton>
        </td>
        <td class="auto-style20">
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click1">Ford</asp:LinkButton>
        </td>
        <td class="auto-style21">
            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click1">Honda</asp:LinkButton>
        </td>
        <td class="auto-style31">
            <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click1">Lexus</asp:LinkButton>
        </td>
        <td class="auto-style30">
            <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click1">Mercedes Benz</asp:LinkButton>
        </td>
        <td class="auto-style29">
            <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click1">Nissan</asp:LinkButton>
        </td>
        <td class="auto-style28">
            <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click1">Tesla</asp:LinkButton>
        </td>
        <td class="auto-style27">
            <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click1">Toyota</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<br />
    <p class="auto-style34">
        Eis as ultimas novidades- Visite o nosso Stand<p class="auto-style34">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AutoConnectionString %>" SelectCommand="SELECT * FROM [Carros] WHERE ([Marca] = @Marca)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="" Name="Marca" QueryStringField="marca" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style10">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style11" DataKeyField="Matricula" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" Width="819px">
                <ItemTemplate>
                    <div class="auto-style7">
                        <span class="auto-style12">Matricula: </span>
                        <asp:Label ID="MatriculaLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("Matricula") %>' />
                        <br class="auto-style12" />
                        &nbsp;<asp:Label ID="MarcaLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("Marca") %>' />
                        <br class="auto-style12" />
                        &nbsp;<asp:Label ID="CorLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("Cor") %>' />
                        <br class="auto-style12" />
                        <span class="auto-style12">Preço: </span>
                        <asp:Label ID="PreçoLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("Preço") %>' />
                        <span class="auto-style12">&nbsp;€</span><br class="auto-style12" />
                        <br class="auto-style12" />
                        <asp:Image ID="Image1" runat="server" CssClass="auto-style12" Height="138px" ImageUrl='<%# Eval("Imagem") %>' Width="203px" />
                        <br class="auto-style12" />
                        <br class="auto-style12" />
                        <asp:Label ID="DescriçãoLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("Descrição") %>' />
                        <br class="auto-style12" />
                        <br />
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AutoConnectionString %>" SelectCommand="SELECT * FROM [Carros]"></asp:SqlDataSource>
</p>
<p>
        &nbsp;</p>
</asp:Content>
