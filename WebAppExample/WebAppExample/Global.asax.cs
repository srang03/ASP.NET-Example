using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebAppExample
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            System.Web.UI.ValidationSettings.UnobtrusiveValidationMode =
                System.Web.UI.UnobtrusiveValidationMode.WebForms;

            Application["Now"] = DateTime.Now;
            Application["CurrentVisit"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Session["Now"] = DateTime.Now;
            Application["CurrentVisit"] = (int)Application["CurrentVisit"] + 1;
            Application.UnLock();
        }
        
        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            
            Application["CurrentVisit"] = (int)Application["CurrentVisit"] -1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            Application["CurrentVisit"] = null;
        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        
    }
}