using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace WebApplication4
{
    /// <summary>
    /// Summary description for mailHandler
    /// </summary>
    public class mailHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            using (var reader = new StreamReader(context.Request.InputStream))
            {
                // This will equal to "charset = UTF-8 & param1 = val1 & param2 = val2 & param3 = val3 & param4 = val4"
                string values = reader.ReadToEnd();
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}