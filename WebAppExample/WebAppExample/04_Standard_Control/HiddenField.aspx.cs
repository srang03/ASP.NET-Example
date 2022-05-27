using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._04_Standard_Control
{
    public partial class HiddenField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                hfd_01.Value = DateTime.Now.ToLongTimeString();
            }
        }

        protected void btn_01_Click(object sender, EventArgs e)
        {
            Response.Write(hfd_01.Value);
        }
    }
}