using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMemo.Models;

namespace WebMemo
{
    public partial class Login : System.Web.UI.Page
    {
        private string _email;
        private string _password;

        public Login()
        {
            _email = string.Empty;
            _password = string.Empty;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected bool IsEmptyEmailOrPassword(string email, string password)
        {
            return string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password);
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            _email = this.txb_email.Text.Trim();
            _password = this.txb_password.Text.Trim();
            if (IsEmptyEmailOrPassword(_email, _password))
            {
                this.lbl_message.InnerText = "빈칸을 입력해주세요.";
            }
            else
            {
                UserRepository service = new UserRepository();
                if(service.IsCollectUser(_email, _password))
                {
                    // 인증 부여
                    if (!string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
                    {
                        // 인증 쿠키값 부여
                        FormsAuthentication.RedirectFromLoginPage(_email, false);
                    }
                    else
                    {
                        // 인증 쿠키값
                        FormsAuthentication.SetAuthCookie(_email, false);
                        Response.Redirect("./MemoBoard/ListMemo.aspx");
                    }
                }
                else
                {
                    lbl_message.InnerText = "아이디와 비밀번호를 확인해주세요";
                }
            }
        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Signup.aspx");
        }
    }
}