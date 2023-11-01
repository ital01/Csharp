<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="CadastrarUsuarios.aspx.cs" Inherits="Projeto1.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">

    <div class="row margin-top-60">
        <div class="col-6">


            <div class=" box border margin-right-20 ">


                <h2>
                    <!-- FORMULARIO -->
                </h2>
                <br />
                <asp:Label ID="MsgErro" runat="server" ForeColor="red"></asp:Label>
                <br />
                <asp:Label ID="Codigo" runat="server" Font-Size="20px"></asp:Label>
                <label>Digite Seu Nome*</label>

                <asp:TextBox ID="Nome" MaxLength="255" runat="server"></asp:TextBox>

                <label>Email*</label>
                <asp:TextBox ID="Email" TextMode="Email" MaxLength="255" runat="server"></asp:TextBox>

                <label>telefone*</label>
                <asp:TextBox ID="Telefone" TextMode="phone" MaxLength="255" runat="server"></asp:TextBox>
                <br />
                <label>NomeAcesso*</label>
                <asp:TextBox ID="NomeAcesso" MaxLength="255" runat="server"></asp:TextBox>
                <br />
                <label>Senha*</label>
                <asp:TextBox ID="Senha" TextMode="Password" MaxLength="255" runat="server"></asp:TextBox>
                <br />
                <label>Anotações</label>
                <asp:TextBox ID="Anotacoes" TextMode="MultiLine" Rows="6" MaxLength="255" runat="server"></asp:TextBox>

                <asp:DropDownList ID="status" runat="server">
                    <asp:ListItem Selected="True" Text="Ativo" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Excluido" Value="-1"></asp:ListItem>
                </asp:DropDownList>

                <br />
                <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
                <asp:Button Visible="false" ID="Excluir" OnClick="Excluir_Click" runat="server" Text="Excluir" />

            </div>
        </div>

        <!-- LISTA -->
        <div class="col-6">
            <div class="box border">
                <asp:GridView 
                    AutoGenerateSelectButton="True" 
                    OnSelectedIndexChanged="ListaUsuarios_SelectedIndexChanged" 
                    ID="ListaUsuarios" 
                    Width="100%" 
                    CellPadding="6" 
                    runat="server"
                    ></asp:GridView>
            </div>
        </div>

    </div>





</asp:Content>


