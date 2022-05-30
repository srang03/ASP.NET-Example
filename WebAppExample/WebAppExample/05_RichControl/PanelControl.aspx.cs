using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._05_RichControl
{
    public partial class PanelControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              

                pnl_01.Visible = true;
                pnl_02.Visible = false;
                btn_showFirst.Visible = false;
                btn_showSecond.Visible = true;

            }
            Page.SetFocus(txt_message);
        }

        protected void btn_showFirst_Click(object sender, EventArgs e)
        {
            pnl_01.Visible = true;
            pnl_02.Visible = false;
            btn_showFirst.Visible = false;
            btn_showSecond.Visible = true;
        }

        protected void btn_showSecond_Click(object sender, EventArgs e)
        {
            pnl_01.Visible = false;
            pnl_02.Visible = true;
            btn_showFirst.Visible = true;
            btn_showSecond.Visible = false;
   
            
        }
    }
}