using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._04_Standard_Control
{
    public partial class RadioButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rdoM.Text = "남자";
            rdoW.Text = "여자";
        }

        protected void btn_01_Click(object sender, EventArgs e)
        {
            if (rdoM.Checked)
            {
                lbl_01.Text = rdoM.Text + "입니다.";
            }
            else if(rdoW.Checked)
            {
                lbl_01.Text = rdoW.Text + "입니다.";
            }
            else
            {
                lbl_01.Text = "항목을 선택해주세요";
            }
            
        }
    }
}