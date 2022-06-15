using DevUser.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevUser
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string id = this.txb_id.Text.Trim();
            string pw = this.txb_pw.Text.Trim();

            var service = new UserService();
            if(service.IsCollectUser(id, pw))
            {
                // [1] 인증 부여
                if (!String.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
                {
                    // 인증 쿠키값 부여
                    FormsAuthentication.RedirectFromLoginPage(id, false);
                    Response.Redirect("Welcome.aspx");
                }
                else
                {
                    FormsAuthentication.SetAuthCookie(id, false);
                    Response.Redirect("Welcome.aspx");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(
                    this.GetType(), "showMsg", "<script>alert('아이디와 비밀번호가 다릅니다');</script>");
            }
        }
    }
}