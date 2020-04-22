using MailingMe;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utils;

namespace WebApplication4
{
    public partial class Home : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            //RegisterAsyncTask(new PageAsyncTask(SendMailAndContinue));
            if (IsPostBack)
            {
              await  SendMailAndContinue();
            }
        }

        protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("Next.aspx", true);
        }

        protected void BtnHemcheh_Click(object sender, EventArgs e)
        {
            Server.Transfer("Next.aspx", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var i = 5;
        }


        private async Task SendMailAndContinue()
        {
            try
            {
                Mailer mailer = new Mailer("smtp.gmail.com", "bachklafim@gmail.com", "Bergonzi2233@", "587", "bachklafim@gmail.com");

                var mailArr = HdnMail.Value.Split(';');

                MailDetails details = new MailDetails();
                details.MailDetail.Rows.Add(mailArr[0], mailArr[1], mailArr[2], mailArr[3]);

                mailer.CreateMail(false, "", details);
                HdnMessage.Value =  mailer.CreateMessage(details);
                await mailer.SendMailAsynchrously();//await Task.Delay(1000);//mailer.SendMailAsynchrously();


                Server.Transfer("Next.aspx", true);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}