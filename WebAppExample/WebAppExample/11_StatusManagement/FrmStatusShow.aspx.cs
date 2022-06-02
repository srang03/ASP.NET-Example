using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._11_StatusManagement
{
    public partial class FrmStatusShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txb_application.Text = Application["Now"].ToString();
            txb_session.Text = Session["Now"].ToString();

            if (Cache["Now"] != null)
            {
                txb_cache.Text = Cache["Now"].ToString();

            }

            if (Request.Cookies["Now"] != null)
            {
                txb_cookies.Text = Server.UrlDecode(Request.Cookies["Now"].Value);

            }

            if (ViewState["Now"] != null)
            {
                txb_viewstate.Text = ViewState["Now"].ToString();

            }
        }

        protected void btn_save_Click(object sener, EventArgs e)
        {

           
        }
    }
}