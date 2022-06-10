using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DapperDBProject
{
    public partial class ListModel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Print_ListModel();
        }

        protected void Print_ListModel()
        {
            ModelServiceDapper service = new ModelServiceDapper();
            var list = service.ReadModel();
            this.grdv_list.DataSource = list;
            this.grdv_list.DataBind();
        }

        protected void Print_ListSearchModel()
        {
            string field = this.ddl_select.SelectedValue;
            string value = this.txb_value.Text;
            ModelServiceDapper service = new ModelServiceDapper();
            var lsit = service.ReadSearchModel(field, value);
            this.grdv_list.DataSource = lsit;
            this.grdv_list.DataBind();
        }

        protected void btn_serach_Click(object sender, EventArgs e)
        {
            Print_ListSearchModel();
        }
    }
}