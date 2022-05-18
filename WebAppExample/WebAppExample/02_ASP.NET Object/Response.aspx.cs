using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._02_ASP.NET_Object
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_click_Click(object sender, EventArgs e)
        {
            Response.Write("반갑습니다.");
        }

        protected void btn_js_click_Click(object sender, EventArgs e)
        {
            string strJs = @"<script language='JavaScript'>
                            window.alert('안녕');
                            </script>
                            ";
            Response.Write(strJs);
        }
    }
}