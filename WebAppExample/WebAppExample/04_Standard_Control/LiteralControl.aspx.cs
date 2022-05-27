using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._04_Standard_Control
{
    public partial class LiteralControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ltl_01.Text = DateTime.Now.ToShortDateString();
            ltl_02.Text = DateTime.Now.ToShortTimeString();
        }
    }
}