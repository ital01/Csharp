using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Projeto1
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            // validar os dados de entrada 
            if (Nome.Text.Trim() == "")
            {
                MsgErro.Text = "digite se nome";
            }
            else if (Email.Text.Trim() == "")
            {
                MsgErro.Text = "digite seu nome";
            }
            else if (Mensagem.Text.Trim() == "")
            {
                MsgErro.Text = "digite seu nome";
            }
            else
            {
                // 1. Criar email (uma instancia de classe MailMessage)

                String conteudo = "nome:" + Nome.Text + "\nE- mail:" + Email.Text + "\nMensagem: " + Mensagem.Text;
                MailMessage mail = new MailMessage();
                mail.To.Add("contato@seudominio.com.br");
                MailAddress from = new MailAddress("contato@seudominio.com.br");

                mail.From = from;
                mail.Subject = "Fale Conosco";
                mail.Body = conteudo;
                mail.IsBodyHtml = false;

                // 2. Enviar o Email ( instancia da classe SmtpClient)
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.seusominio.com.br";
                smtp.Credentials = new System.Net.NetworkCredential("contato@seudominio.com.br", "suasenha");
                smtp.EnableSsl = true;
                smtp.Send(mail);// Envia email;


            }
            {


            }
            MsgErro.Text = "Digite a Mensagem";

        }
    }
}