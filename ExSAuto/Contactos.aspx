<%@ Page Title="" Language="C#" MasterPageFile="~/auto.Master" AutoEventWireup="true" CodeBehind="Contactos.aspx.cs" Inherits="ExSAuto.Nome_Contactos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style13 {
        text-align: left;
        font-weight: bold;
        font-size: medium;
    }
    .auto-style14 {
        font-family: Arial;
    }
    .auto-style15 {
        text-align: left;
        font-weight: bold;
        font-size: large;
    }
    .auto-style17 {
        text-align: left;
        font-size: small;
        font-family: Arial, Helvetica, sans-serif;
    }
    .auto-style19 {
        text-align: left;
        font-weight: bold;
        font-size: small;
        font-family: Arial, Helvetica, sans-serif;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
    &nbsp;<span class="auto-style14">&nbsp;&nbsp; </span></p>
<p class="auto-style15">
    &nbsp; <span class="auto-style14">Insira o seu Contacto e as suas questões em breve será contactado pela nossa Equipa.</span></p>
<p class="auto-style19">
    &nbsp; Inserir Conctacto</p>
<div class="text-left">
    <div class="text-justify">
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="280px">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Nome:
                <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                <br />
                Local:
                <asp:TextBox ID="LocalTextBox" runat="server" Text='<%# Bind("Local") %>' />
                <br />
                Telemovel:
                <asp:TextBox ID="TelemovelTextBox" runat="server" Text='<%# Bind("Telemovel") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Info:
                <asp:TextBox ID="InfoTextBox" runat="server" Text='<%# Bind("Info") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                &nbsp; Nome:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                <br />
                <br />
                &nbsp; Local:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="LocalTextBox" runat="server" Text='<%# Bind("Local") %>' />
                <br />
                <br />
                &nbsp; Telemovel:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TelemovelTextBox" runat="server" Text='<%# Bind("Telemovel") %>' />
                <br />
                <br />
                &nbsp; Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <br />
                &nbsp; Info:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="InfoTextBox123" runat="server" CssClass="auto-style17" Height="24px" OnTextChanged="InfoTextBox123_TextChanged" Text='<%# Bind("Info") %>' TextMode="MultiLine" Width="191px" />
                <br />
                <br />
                &nbsp;
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;&nbsp; Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                <br />
                &nbsp;&nbsp; Nome:
                <asp:Label ID="NomeLabel" runat="server" Text='<%# Bind("Nome") %>' />
                <br />
                <br />
                &nbsp;&nbsp; Local:
                <asp:Label ID="LocalLabel" runat="server" Text='<%# Bind("Local") %>' />
                <br />
                <br />
                &nbsp;&nbsp; Telemovel:
                <asp:Label ID="TelemovelLabel" runat="server" Text='<%# Bind("Telemovel") %>' />
                <br />
                <br />
                &nbsp;&nbsp; Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <br />
                &nbsp;&nbsp; Info:
                <asp:Label ID="InfoLabel" runat="server" Text='<%# Bind("Info") %>' />
                <br />
                <br />
                &nbsp;&nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contactos] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contactos] ([Nome], [Local], [Telemovel], [Email], [Info]) VALUES (@Nome, @Local, @Telemovel, @Email, @Info)" SelectCommand="SELECT * FROM [contactos]" UpdateCommand="UPDATE [contactos] SET [Nome] = @Nome, [Local] = @Local, [Telemovel] = @Telemovel, [Email] = @Email, [Info] = @Info WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Local" Type="String" />
                <asp:Parameter Name="Telemovel" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Info" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Local" Type="String" />
                <asp:Parameter Name="Telemovel" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Info" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</div>
<p class="auto-style13">
    &nbsp;</p>
<p class="auto-style13">
    &nbsp;</p>
</asp:Content>
