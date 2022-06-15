using DevADONETProject._17_UserControl;
using DevUser.Repository;
using System;
using System.Web.UI;

namespace DevUser
{
    public partial class UserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Login.aspx");
            }
            if (!Page.IsPostBack)
            {
                DisplayData();
            }

        }

        private void DisplayData()
        {
            UserService service = new UserService();
            var id = Page.User.Identity.Name;
            var user = service.GetUser(id);

            this.lbl_id.Text = user.Id.ToString();
            this.lbl_userid.Text = user.UserId;
            this.txb_userpw.Text = user.UserPassword;
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            UserService service = new UserService();
            UserModel user = new UserModel();

            var res = service.ModifyUser(new UserModel()
            {
                Id = int.Parse(this.lbl_id.Text),
                UserId = this.lbl_userid.Text,
                UserPassword = this.txb_userpw.Text
            });
            string strJS = string.Empty;
            if (res)
            {
                strJS = "<script>alert('수정완료'); location.href='Default.aspx';</script>";
               
            }
            else
            {
                strJS = "<script>alert('수정 오류 발생'); location.href='Default.aspx';</script>";
            }

            Page.ClientScript.RegisterClientScriptBlock(
                   this.GetType(), "goDefault", strJS);

        }
    }
}