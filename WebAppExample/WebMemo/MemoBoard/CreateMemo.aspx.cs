using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMemo.Models;

namespace WebMemo.MemoBoard
{
    public partial class CreateMEmo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.txb_title.Text) || string.IsNullOrEmpty(this.txb_content.Text))
            {
                lbl_message.Text = "빈 칸을 입력해주세요.";
            }
            else
            {
                MemoRepository service = new MemoRepository();
                if (service.CreateMemo(new MemoModel()
                {
                    TITLE = this.txb_title.Text.Trim(),
                    CONTENT = this.txb_content.Text.Trim(),
                    IPADDRESS = Request.UserHostAddress,
                    USER_ID = Convert.ToInt32(Session["user_id"]),
                   
                }))
                {
                    Response.Redirect("./ListMemo.aspx");
                }
                else
                {
                    lbl_message.Text = "문제가 발생했습니다. 다시 시도해주세요.";
                }
               
            }
        }
    }
}