using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._05_RichControl
{
    public partial class Substitution : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_cached.Text = DateTime.Now.ToLongTimeString();
        }

        public static string GetCurrentTime(HttpContext context)
        {
            return DateTime.Now.ToLongTimeString();
        }
    }
}