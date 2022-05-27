using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._05_RichControl
{
    public partial class CalendarControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request.QueryString["Date"]))
            {
                Response.Write(Request.QueryString["Date"]);
            }
            else
            {
                Response.Write("없습니다.");
            }
        }

        protected void cld_main_SelectionChanged(object sender, EventArgs e)
        {
            Response.Write(cld_main.SelectedDate.ToShortDateString());
        }

        protected void cld_sub_SelectionChanged(object sender, EventArgs e)
        {
            string script = Request.ServerVariables["SCRIPT_NAME"];
            string strUrl = $"{script}?Date={cld_sub.SelectedDate.ToShortDateString()}";
            Response.Redirect(strUrl);
        }
    }
}