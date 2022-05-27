using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._04_Standard_Control
{
    public partial class CheckBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_checkIt_Click(object sender, EventArgs e)
        {
            string str = "";
            if (cbx_01.Checked)
            {
                str += cbx_01.Text + "<br/>";
            }
            if (cbx_02.Checked)
            {
                str += cbx_02.Text + "<br/>";
            }
            if (cbx_03.Checked)
            {
                str += cbx_03.Text + "<br/>";
            }
     
            lbl_01.Text = str;
        }

        protected void btn_01_Click(object sender, EventArgs e)
        {
            string str = "";
            for(int i = 0; i < cbl_01.Items.Count; i++)
            {
                if (cbl_01.Items[i].Selected)
                {
                    str += cbl_01.Items[i].Text + "<br/>";
                }
            }
            lbl_02.Text = str;
        }
    }
}