using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._14_Dapper_Review
{
    public partial class BrowseReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Request["id"])){
                div_detailBox.Visible = false;
                return;
            }

            if (int.TryParse(Request["id"], out int id))
            {
                Browse_Review(id);
            }


        }

        protected void Browse_Review(int id)
        {
            ReviewService service = new ReviewService();
            Review review = service.BrowseReview(id);
            if(review != null)
            {
                this.lbl_id.Text = review.Id.ToString();
                this.lbl_name.Text = review.Name.ToString();
                this.lbl_title.Text = review.Title.ToString();
                this.lbl_postDate.Text = review.PostDate.ToString();
                this.lbl_PostIp.Text = review.PostIP.ToString();
            }
            else
            {
                div_detailBox.Visible = false;
            }
      

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            Response.Redirect($"DeleteReview.aspx?id={Request["id"]}");
        }

        protected void btn_modify_Click(object sender, EventArgs e)
        {
            Response.Redirect($"UpdateReview.aspx?id={Request["id"]}");
        }
    }
}