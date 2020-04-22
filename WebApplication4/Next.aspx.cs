using MailingMe;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Next : System.Web.UI.Page
    {


        public string prevValues = string.Empty;

        public string message = string.Empty;

        protected async void Page_Load(object sender, EventArgs e)
        {
                    

                if (!IsPostBack)
	            {
                       prevValues = ((HiddenField)PreviousPage.Master.FindControl("ContentPlaceHolder1").FindControl("HiddenField1")).Value;
                HdnDetails.Value = ((HiddenField)PreviousPage.Master.FindControl("ContentPlaceHolder1").FindControl("HdnMessage")).Value;
                HdnMailCnt.Value = "0";

                }

            if (IsPostBack)
            {
                prevValues = HdnPrevalues.Value;
                
            }
        }

        protected async void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                Mailer mailer = new Mailer("smtp.gmail.com", "bachklafim@gmail.com", "Bergonzi2233@", "587", ((ImageButton)sender).Attributes["mail"]);

                var mailArr = HdnMessage.Value;


                mailer.CreateMail(false, "", mailArr);

                await mailer.SendMailAsynchrously();

                HdnMailCnt.Value = "1";

            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}