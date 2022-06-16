using DevUser.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevUserReview.User
{
    public partial class Login : System.Web.UI.Page
    {
        string message = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ShowMessage(string msg)
        {
            this.lbl_message.Text = msg;
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string userId = this.txb_userId.Text;
            string userPassword = this.txb_userpassword.Text;
            if (string.IsNullOrEmpty(userId) || string.IsNullOrEmpty(userPassword)){
                message = "아이디와 비밀번호를 입력해주세요";
                ShowMessage(message);
            }
            else
            {
                UserLogin(userId, userPassword);
            }
        }

        private void UserLogin(string userId, string userPassword)
        {
            var service = new UserService();
            if(service.IsCollectUser(userId, userPassword, out int id))
            {
                if (!String.IsNullOrEmpty(Request.QueryString["ReturnUrl"])){
                    FormsAuthentication.RedirectFromLoginPage(id.ToString(), false);
                }
                else
                {
                    FormsAuthentication.SetAuthCookie(id.ToString(), false);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(
                    this.GetType(), "showMsg",
                    "<script>alert('잘못된 사용자입니다');</script>");
            }
        }
    }
}