using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._14_Dapper_Review
{
    public partial class DeleteReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Request["id"]))
            {
                this.lbl_message.InnerText = "올바르지 않은 경로입니다.";
                this.div_deletedbox.Visible = false;
                return;
            }

            if (int.TryParse(Request["id"], out int id)){
                if (!IsPostBack)
                {
                    this.lbl_message.InnerText = "Do you really want to delete?";
                }
            }
            else
            {
                this.lbl_message.InnerText = "올바르지 않은 id입니다.";
                this.div_deletedbox.Visible = false;
            }



        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            if(int.TryParse(Request["id"], out int id))
            {
                Delete_Review(id);
            }
            
        }

        protected void btn_goBack_Click(object sender, EventArgs e)
        {

        }
        
        protected void Delete_Review(int id)
        {
            ReviewService service = new ReviewService();
            bool res = service.DeleteReview(id);

            if (res)
            {
                this.lbl_message.InnerText = "정상적으로 삭제되었습니다." ;
            }
            else
            {
                this.lbl_message.InnerText = "삭제되지 않았습니다.";
            }
            this.div_deletedbox.Visible = false;
        }
    }
}