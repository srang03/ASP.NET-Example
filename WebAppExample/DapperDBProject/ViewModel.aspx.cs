using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DapperDBProject
{
    public partial class ViewModel : System.Web.UI.Page
    {
        private string _query_id;
        private int _id;
        private bool res;

        public ViewModel()
        {
            res = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Request["id"]))
            {

            }
            else
            {
                _query_id = Request["id"];
                if (int.TryParse(_query_id, out int id))
                {
                    _id = id;
                    res = true;
                }
                else
                {

                }
            }


            if (res)
            {
                this.hpl_delete.NavigateUrl = $"DeleteModel.aspx?id={_id}";
                this.hpl_modify.NavigateUrl = $"ModifyModel.aspx?id={_id}";
                Print_ViewModel(_id);
            }     
        }

        protected void Print_ViewModel(int id)
        {
            ModelServiceDapper service = new ModelServiceDapper();
            
            Model model = service.BrowseModel(id);
            if (model == null)
            {
                lbl_result.Text = "올바른 접근이 아닙니다";
                this.tbl_content.Visible = false;
                div_viewBox.Visible = false;
            }
            else
            {
                
                this.lbl_id.Text = model.Id.ToString();
                this.lbl_name.Text = model.Name;
                this.lbl_isActive.Text = model.IsActive.ToString();
                this.lbl_created.Text = model.Created.ToString();
            }
            return;
        }
    }
}