using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DevADONETProject._14_Dapper_Review
{
    public partial class ReadAllReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Read_AllReview();
            }
            
        }
        protected void Read_AllReview()
        {
            ReviewService service = new ReviewService();
            List<Review> list = service.ReadAllReview();

            if(list != null)
            {
                this.grdv_list.DataSource = list;
                this.grdv_list.DataBind();
            }
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            ReviewService service = new ReviewService();

            var res = service.SearchReview(this.ddl_list.SelectedValue, this.txb_value.Text);
            if(res != null)
            {
                this.grdv_list.DataSource = res;
                this.grdv_list.DataBind();
            }
        }
    }
}