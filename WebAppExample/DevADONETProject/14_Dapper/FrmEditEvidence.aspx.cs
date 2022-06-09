using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._14_Dapper
{
    public partial class FrmEditEvidence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query_id = Request["id"];
            if (String.IsNullOrEmpty(query_id))
            {
                return;
            }
            if(int.TryParse(query_id, out int id))
            {
                hpl_back.NavigateUrl = $"FrmViewEvidence.aspx?id={id}";
                if (!IsPostBack)
                {
                    ViewModel(id);
                }
            }
            
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string query_id = Request["id"];
            int.TryParse(query_id, out int id);
            EvidenceRepository service = new EvidenceRepository();
            var result = service.EditEvidence(new Model.Evidence()
            {
                Id = id,
                Name = this.lbl_name.Text,
                Content = this.txb_content.Text
            });

            if (result)
            {
                ViewModel(id);
                lbl_message.Text = "정상적으로 수정되었습니다.";
            }
            else
            {
                lbl_message.Text = "오류가 발생했습니다.";
            }

        }

        protected void ViewModel(int id)
        {
            EvidenceRepository service = new EvidenceRepository();
            var evidence = service.BrowseEvidence(id);
            this.lbl_id.Text = evidence.Id.ToString();
            this.lbl_name.Text = evidence.Name;
            this.lbl_createDate.Text = evidence.CreatedDate.ToString();
            this.txb_content.Text = evidence.Content;
        }
    }
}