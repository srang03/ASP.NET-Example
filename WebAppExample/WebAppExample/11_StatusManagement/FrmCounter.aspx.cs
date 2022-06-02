using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._11_StatusManagement
{
    public partial class FrmCounter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_counter.Text = Application["CurrentVisit"].ToString();
            lbl_now.Text = DateTime.Now.ToString();

     
        }
    }
}