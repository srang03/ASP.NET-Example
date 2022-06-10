using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DapperDBProject
{
    public partial class CreateModel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_crateModel_Click(object sender, EventArgs e)
        {
            Create_Model();
        }

        protected void Create_Model()
        {
            // [1] 모델 생성
            Model model = new Model()
            {
                Name = this.txb_name.Text,
                IsActive = this.ckb_active.Checked
            };

            // [2] 서비스 실행

            ModelServiceDapper service = new ModelServiceDapper();
            model = service.CraeteModel(model);

            // [3] 로그 작성

            // [4] 이동
            Response.Redirect($"ViewModel.aspx?id={model.Id}");


        }
    }
}