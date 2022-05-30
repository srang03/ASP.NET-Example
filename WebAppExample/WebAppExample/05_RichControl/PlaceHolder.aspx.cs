using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._05_RichControl
{
    public partial class PlaceHolder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button btn = new Button();
            btn.Text = "버튼 클릭";
            btn.Click += Btn_Click;
            ctlPlaceHolder.Controls.Add(btn);
        }

        private void Btn_Click(object sender, EventArgs e)
        {
            lbl_display.Text = "버튼이 클릭되었습니다.";

        }
    }
}