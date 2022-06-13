using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._14_Dapper_Review
{
    public partial class CreateReivew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_Review(string name, string title, string postIP)
        {
            
            Review review = new Review(name, title, postIP);
            
            ReviewService service = new ReviewService();
            review = service.CraeteReview(review);

            Response.Redirect($"BrowseReview.aspx?id={review.Id}");
        }

        private void Show_Message(string msg)
        {
            this.lbl_message.InnerText = msg;
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string name = this.txb_name.Text.Trim();
            string title = this.txb_title.Text.Trim();
            
            if (string.IsNullOrEmpty(name))
            {
                Show_Message("이름을 입력해주세요.");
                
                return;
            }
            if (string.IsNullOrEmpty(title))
            {
                Show_Message("제목을 입력해주세요.");
                return;
            }

            Create_Review(name, title, Request.UserHostAddress);


        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReadAllReview.aspx");
        }
    }
}