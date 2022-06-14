using DevADONETProject._17_UserControl;
using DevUser.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevUser
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            string id = this.txb_userid.Text.Trim();
            string pw = this.txb_userpassword.Text.Trim();

            if(string.IsNullOrEmpty(id) || string.IsNullOrEmpty(pw))
            {
                return;
            }

            var service = new UserService();
            service.AddUser(new UserModel()
            {
                UserId = id,
                UserPassword = pw
            });

            string strJs = "<script>alert('회원가입 완료');location.href='Default.aspx';</script>";
            Page.ClientScript.RegisterClientScriptBlock(
                this.GetType(), "goDefault", strJs);
        }
    }
}