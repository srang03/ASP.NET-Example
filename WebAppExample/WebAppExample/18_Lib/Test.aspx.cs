using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._18_Lib
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_print_Click(object sender, EventArgs e)
        {
            string str = this.txb_input.Text;
            this.lbl_result.Text = Dul.StringLibrary.CutStringUniCode(str, 6);
        }
    }
}