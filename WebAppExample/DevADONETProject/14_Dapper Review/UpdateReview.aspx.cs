using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._14_Dapper_Review
{
    public partial class UpdateReview : System.Web.UI.Page
    {
        string message = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (string.IsNullOrEmpty(Request["id"]))
            {
                return;
            }
            if (int.TryParse(Request["id"], out int id))
            {
                if (!IsPostBack)
                {
                    Browse_Review(id);
                }
            }
        }
        protected void Browse_Review(int id)
        {
            ReviewService service = new ReviewService();
            var review = service.BrowseReview(id);
            this.lbl_id.Text = review.Id.ToString();
            this.lbl_name.Text = review.Name;
            this.txb_title.Text = review.Title;
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (int.TryParse(Request["id"], out int id))
            {
                ReviewService service = new ReviewService();
                var res = service.UpdateReview(new Review()
                {
                    Id = id,
                    Title = this.txb_title.Text,
                    PostIP = Request.UserHostAddress
                });

                if (res)
                {
                    message = "정상적으로 수정되었습니다.";
                    Response.Redirect($"BrowseReview.aspx?id={id}");
                }
                else
                {
                    message = "수정되지 않았습니다.";
                }
            }

         
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            if(int.TryParse(Request["id"], out int id))
            {
                Response.Redirect($"BrowseReview.aspx?id={id}");
            }
           
        }
    }
}