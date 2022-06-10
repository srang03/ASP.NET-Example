using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DapperDBProject
{
    public partial class ModifyModel : System.Web.UI.Page
    {
        private int _id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Request.QueryString["id"]))
            {

            }
            else
            {
                if (int.TryParse(Request.QueryString["id"], out _id))
                {
                    if (!IsPostBack)
                    {

                        Read_Model(_id);
                    }
                }
            } 
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            Save_ModifyModel(_id);
            Response.Redirect($"ViewModel.aspx?id={_id}");
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect($"ViewModel.aspx?id={_id}");
        }

        protected void Read_Model(int id)
        {
            ModelServiceDapper service = new ModelServiceDapper();
            Model model = service.BrowseModel(id);

            this.lbl_id.Text = model.Id.ToString();
            this.lbl_created.Text = model.Created.ToString();
            this.txb_name.Text = model.Name;
            this.ckb_active.Checked = model.IsActive;

        }

        protected void Save_ModifyModel(int id)
        {
            ModelServiceDapper service = new ModelServiceDapper();
            service.UpdateModel(new Model()
            {
                Id = id,
                Name = this.txb_name.Text,
                IsActive = this.ckb_active.Checked
            });
        }
    }
}