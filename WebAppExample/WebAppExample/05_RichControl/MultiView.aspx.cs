using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._05_RichControl
{
    public partial class MultiView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mtv_view.ActiveViewIndex = 0;
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            mtv_view.ActiveViewIndex = 1;
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            mtv_view.ActiveViewIndex = 0;
            
        }
    }
}