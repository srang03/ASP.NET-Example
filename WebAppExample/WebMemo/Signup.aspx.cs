using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMemo.Models;

namespace WebMemo
{
    public partial class Signup : System.Web.UI.Page
    {
        private string _email;
        private string _password;
        private string _name;

        public Signup()
        {
            _email = string.Empty;
            _password = string.Empty;
            _name = string.Empty;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            _email = this.txb_email.Text.Trim();
            _password = this.txb_password.Text.Trim();
            _name = this.txb_name.Text.Trim();
            
            if (IsEmptyEmailOrPassword(_email, _password))
            {
                lbl_message.Text = "아이디와 비밀번호를 입력해주세요.";
            }
            else
            {
                UserRepository service = new UserRepository();
                if(
                service.CreateUser(new UserModel()
                {
                    NAME = _name,
                    EMAIL = _email,
                    PASSWORD = _password,
                })){
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    lbl_message.Text = "다시 시도해주세요";
                }
            }
        }

        protected bool IsEmptyEmailOrPassword(string email, string password)
        {
            return string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password);
        }
    }
}