using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace DevADONETProject._14_Dapper
{
    public partial class FrmCreateEvidence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_create_Click(object sender, EventArgs e)
        {
            Evidence model = new Evidence();
            model.Name = this.txb_name.Text;
            model.Content = this.txb_content.Text;

            EvidenceRepository repository = new EvidenceRepository();
            model = repository.CreateEvidence(model); 
            lbl_result.Text = $"{model.Id}번째 증거가 생성되었습니다.";
            Response.Write($"{model.Name}, {model.Content}");
        }
    }
}