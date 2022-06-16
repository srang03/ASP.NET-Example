using DevUser.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevUserReview.User
{
    public partial class Signup : System.Web.UI.Page
    {
        private string message = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string userId = this.txb_id.Text;
            string userPassword = this.txb_pw.Text;

            if (string.IsNullOrEmpty(userId) || string.IsNullOrEmpty(userPassword))
            {
                message = "빈 항목을 입력해주세요";
                return;
            }
            else
            {
                RegisterUser(userId, userPassword);
                string strJS = "<script>alert('가입완료'); location.href='../Default.aspx';</script>";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "goDefault", strJS);
            }

        }

        private void RegisterUser(string userId, string userPassword)
        {
            UserService service = new UserService();
            service.AddUser(service.CreateUserModel(userId, userPassword));
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Default.aspx");
        }
    }
}