﻿using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                ExibirUsuarios();
            }
        }

        protected void ExibirUsuarios()
        {
            ListaUsuarios.DataSource = Usuarios.UsuariosAtivos();
            ListaUsuarios.DataBind();
        }



        protected void Enviar_Click(object sender, EventArgs e)
        {
            // validar os dados de entrada 
            if (Nome.Text.Trim() == "")
            {
                MsgErro.Text = "digite seu nome";
            }
            else if (Email.Text.Trim() == "")
            {
                MsgErro.Text = "Digite email Valido";
            }
            else if (Telefone.Text.Trim() == "")
            {
                MsgErro.Text = "digite telefone";
            }

            else if (NomeAcesso.Text.Trim() == "")
            {
                MsgErro.Text = "login de acesso";
            }
            else if (Senha.Text.Trim() == "")
            {
                MsgErro.Text = "Digite a senha";
            }
            else

            {
                // GRAVA O REGISTRO
                Model.Usuarios user = new Model.Usuarios();
                user.Nome = Nome.Text.Trim();
                user.Email = Email.Text.Trim();
                user.Telefone = Telefone.Text.Trim();
                user.Anotacoes = Anotacoes.Text.Trim();
                user.Senha = Senha.Text.Trim();
                user.NomeAcesso = NomeAcesso.Text.Trim();
                user.Status = Convert.ToInt16(status.Text);

                DataBase.Open();

                if (Codigo.Text == "")
                {
                    DataBase.Command.Insert(user, "Codigo");
                }
                else
                {
                    DataBase.Command.Update(user, "Codigo", Codigo.Text);
                }
                ExibirUsuarios();
                LimparDados();


            }
        }

        protected void LimparDados() 
        {
            Codigo.Text = "";
            Nome.Text = "";
            Email.Text = "";
            Telefone.Text = "";
            Anotacoes.Text = "";
            NomeAcesso.Text = "";
            Senha.Text = "";
            Excluir.Visible= false;
            Enviar.Text = "Inserir";
        }

        protected void Excluir_Click(object sender, EventArgs e)
        {

        }
    }
}