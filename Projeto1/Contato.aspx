<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="Projeto1.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
     <div>
        <div class="margin-top-60">
            <div class="row">
                <!-- dados email-->
                <div class="col-6">
                    <div class="box border margin-right-20">
                        <h2>Fale Conosco</h2>
                        </br>
                        <asp:Label ID="MsgErro" runat="server" ForeColor="red"></asp:Label>
                        <label>Seu Nome*</label>
                        <asp:TextBox ID="Nome"  MaxLength="255" runat="server"></asp:TextBox>

                           <label>Seu E-mail*</label>
                        <asp:TextBox ID="Email" TextMode="Email" MaxLength="255" runat="server"></asp:TextBox>

                        
                           <label>Mensagem</label>
                        <asp:TextBox ID="Mensagem" TextMode="MultiLine" Rows="6" MaxLength="255" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button ID="Enviar" Onclick="Enviar_Click" runat="server" Text="Enviar"  />

                    </div>
                </div>

                <!-- MAPA -->
                <div class="col-6">
                    <div class="box border">
                    </div>
                </div>
            </div>


        </div>

</asp:Content>
