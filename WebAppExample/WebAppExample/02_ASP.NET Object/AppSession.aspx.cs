using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._02_ASP.NET_Object
{
    public partial class AppSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Application["Count"] == null)
            {
                Application.Lock();
                Application["Count"] = 1;
                Application.UnLock();
            }
            else
            {
                Application["Count"] = (int)Application["Count"] + 1;
            }

            if(Session["Count"]== null)
            {
                Session["Count"] = 1;
            }
            else
            {
                Session["Count"] = (int)Session["Count"] + 1;
            }

            lbl_application.Text = Application["Count"].ToString();
            lbl_session.Text = Session["Count"].ToString();
            lbl_session_id.Text = Session.SessionID;
            lbl_Timeout.Text = Session.Timeout.ToString();
        }
    }
}