
<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- neste local são colocados "meta dados" ou links para arquivos javascript ou css-->


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <!-- Aqui são colocados os conteudos para exibir no browser-->

    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="Images/banner0.png" />
            </li>
            <li>
                <img src="Images/banner1.png" />
            </li>
            <li>
                <img src="Images/banner2.png" />
            </li>
            <li>
                <img src="Images/banner3.png" />
            </li>
            <li>
                <img src="Images/banner4.png" />
            </li>
        </ul>
    </div>
    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
    </script>
    <!-- dividir em colunas com display: flex -->
    <div class="row margin-top-60">
        <div class="col-3">
            <div class="box margin-right-20">
                <img width="100%" src="Images/si1.png" />
                <br />
                <h3>Analise de Sistemas</h3>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                </p>
            </div>
        </div>
        <div class="col-3">
            <div class="box margin-right-20">
                <img width="100%" src="Images/si2.jpg" />
                <br />
                <h3>Consultoria</h3>
                <p>
                    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. 
                </p>
            </div>
        </div>
        <div class="col-3">
            <div class="box margin-right-20">
                <img width="100%" src="Images/si3.jpg" />
                <br />
                <h3>Serviços</h3>
                <p>
                    tis a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                </p>
            </div>
        </div>
        <div class="col-3">
            <div class="box">
                <img width="100%" src="Images/si4.jpg" />
                <br />
                <h3>Programação</h3>
                <p>
                    There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.
                </p>
            </div>
        </div>


    </div>


</asp:Content>
