using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._06_ValidationControl
{
    public partial class ValidationControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.SetFocus(txt_userid);
            }

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "<script>alert('통과');</script>");
            }
        }
    }
}