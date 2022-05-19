using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._02_ASP.NET_Object
{
    public partial class Server : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_info1.Text = Server.MapPath("."); // 물리적인 경로
            lbl_info2.Text = Request.ServerVariables["SCRIPT_NAME"]; // 현재 파일 스크립트의 경로
        }
    }
}