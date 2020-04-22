using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Mail;
using System.Net.Mail;
using System.Net;
using Utils;
using System.Threading;
using System.Threading.Tasks;

namespace MailingMe
{
    public class Mailer
    {
        private System.Net.Mail.MailMessage Mail;
        private SmtpClient gsmtp;

        private string _destinationmail;

        public string Ddestinationmail
        {
            get { return _destinationmail; }
            set { _destinationmail = value; }
        }

        private string fromMail;

        public string PFromMail
        {
            get { return fromMail; }
            set { fromMail = value; }
        }



        public Mailer(string smtp,string login,string pass,string port,string destinationmail)
        {
            this.Ddestinationmail = destinationmail;
            this.PFromMail = login;
            Mail = new System.Net.Mail.MailMessage();
            if (port == string.Empty)
            {
                gsmtp = new SmtpClient(smtp);
            }
            else
            {
                gsmtp = new SmtpClient(smtp, int.Parse(port));
                gsmtp.EnableSsl = true;
            }
           
            gsmtp.Credentials = new NetworkCredential(login, pass);
            
        }


        public void CreateMail(bool devis,string file,MailDetails md)
        {
            try
            {
                if (devis)
                {
                    Attachment att = new Attachment(file);
                    Mail.Attachments.Add(att);

                }
                Mail.Body = CreateMessage(md);
                
            }
            catch (Exception ex)
            {
                return;
            }
        }

        public void CreateMail(bool devis, string file,string mess)
        {
            try
            {
                if (devis)
                {
                    Attachment att = new Attachment(file);
                    Mail.Attachments.Add(att);

                }
                Mail.Body = CreateMessage(mess);

            }
            catch (Exception ex)
            {
                return;
            }
        }


        public void SendMail()
        {
            gsmtp.Send(Mail);
        }

        public Task SendMailAsynchrously()
        {
            //Thread t = new Thread(new ThreadStart(SendMail));
            //t.Start();
            return Task.Run(SendMail);
        }


        public string CreateMessage(MailDetails md)
        {
            StringBuilder sb = new StringBuilder();
            MailDetails.MailDetailRow r = (MailDetails.MailDetailRow)md.MailDetail.Rows[0];
            sb.AppendLine("Name:" + r.nom+" "+ r.prenom);
            sb.AppendLine("E-mail: " + r.email);
            sb.AppendLine("telephone : " + r.phone);

            Mail.From = new MailAddress(r.email);
            //Mail.To = new MailAddressCollection().Add(new MailAddress("JP@or-avir.com"));
            Mail.To.Add(new MailAddress(_destinationmail));

            return sb.ToString();
        }

        public string CreateMessage(string mess)
        {


            Mail.From = new MailAddress(PFromMail);
            //Mail.To = new MailAddressCollection().Add(new MailAddress("JP@or-avir.com"));
            Mail.To.Add(new MailAddress(_destinationmail));

            return mess;
        }

    }
}
