<%@ Page Title="" Language="C#" MasterPageFile="~/auto.Master" AutoEventWireup="true" CodeBehind="inserir.aspx.cs" Inherits="ExSAuto.inserir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style13 {
        text-align: left;
        font-family: "Arial Black";
        font-size: medium;
        font-weight: bold;
    }
    .auto-style14 {
        font-family: Arial, Helvetica, sans-serif;
        font-weight: normal;
        font-size: small;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style13">
    Inserir Carros<br />
    <b>
    <br />
    <asp:FormView ID="FormView1" runat="server" CssClass="auto-style14" DataKeyNames="Matricula" DataSourceID="SqlDataSource1" Width="264px">
        <EditItemTemplate>
            Matricula:
            <asp:Label ID="MatriculaLabel1" runat="server" Text='<%# Eval("Matricula") %>' />
            <br />
            Marca:
            <asp:TextBox ID="MarcaTextBox" runat="server" Text='<%# Bind("Marca") %>' />
            <br />
            Cor:
            <asp:TextBox ID="CorTextBox" runat="server" Text='<%# Bind("Cor") %>' />
            <br />
            Preço:
            <asp:TextBox ID="PreçoTextBox" runat="server" Text='<%# Bind("Preço") %>' />
            <br />
            Imagem:
            <asp:TextBox ID="ImagemTextBox" runat="server" Text='<%# Bind("Imagem") %>' />
            <br />
            Descrição:
            <asp:TextBox ID="DescriçãoTextBox" runat="server" Text='<%# Bind("Descrição") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Matricula:
            <asp:TextBox ID="MatriculaTextBox" runat="server" Text='<%# Bind("Matricula") %>' />
            <br />
            Marca:
            <asp:TextBox ID="MarcaTextBox" runat="server" Text='<%# Bind("Marca") %>' />
            <br />
            Cor:
            <asp:TextBox ID="CorTextBox" runat="server" Text='<%# Bind("Cor") %>' />
            <br />
            Preço:
            <asp:TextBox ID="PreçoTextBox" runat="server" Text='<%# Bind("Preço") %>' />
            <br />
            Imagem:
            <asp:TextBox ID="ImagemTextBox" runat="server" Text='<%# Bind("Imagem") %>' />
            <br />
            Descrição:
            <asp:TextBox ID="DescriçãoTextBox" runat="server" Text='<%# Bind("Descrição") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Matricula:
            <asp:Label ID="MatriculaLabel" runat="server" Text='<%# Eval("Matricula") %>' />
            <br />
            <br />
            Marca:
            <asp:Label ID="MarcaLabel" runat="server" Text='<%# Bind("Marca") %>' />
            <br />
            <br />
            Cor:
            <asp:Label ID="CorLabel" runat="server" Text='<%# Bind("Cor") %>' />
            <br />
            <br />
            Preço:
            <asp:Label ID="PreçoLabel" runat="server" Text='<%# Bind("Preço") %>' />
            <br />
            <br />
            Imagem:
            <asp:Label ID="ImagemLabel" runat="server" Text='<%# Bind("Imagem") %>' />
            <br />
            <br />
            Descrição:
            <asp:Label ID="DescriçãoLabel" runat="server" Text='<%# Bind("Descrição") %>' />
            <br />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AutoConnectionString %>" DeleteCommand="DELETE FROM [Carros] WHERE [Matricula] = @Matricula" InsertCommand="INSERT INTO [Carros] ([Matricula], [Marca], [Cor], [Preço], [Imagem], [Descrição]) VALUES (@Matricula, @Marca, @Cor, @Preço, @Imagem, @Descrição)" SelectCommand="SELECT * FROM [Carros]" UpdateCommand="UPDATE [Carros] SET [Marca] = @Marca, [Cor] = @Cor, [Preço] = @Preço, [Imagem] = @Imagem, [Descrição] = @Descrição WHERE [Matricula] = @Matricula">
        <DeleteParameters>
            <asp:Parameter Name="Matricula" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Matricula" Type="String" />
            <asp:Parameter Name="Marca" Type="String" />
            <asp:Parameter Name="Cor" Type="String" />
            <asp:Parameter Name="Preço" Type="String" />
            <asp:Parameter Name="Imagem" Type="String" />
            <asp:Parameter Name="Descrição" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Marca" Type="String" />
            <asp:Parameter Name="Cor" Type="String" />
            <asp:Parameter Name="Preço" Type="String" />
            <asp:Parameter Name="Imagem" Type="String" />
            <asp:Parameter Name="Descrição" Type="String" />
            <asp:Parameter Name="Matricula" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </b>
</div>
</asp:Content>
