using Model;
using System;

namespace DevADONETProject._14_Dapper
{
    public partial class FrmViewEvidence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool res = false;
            this.div_viewbox.Visible = false;
            string query_id = Request["id"];
            if (string.IsNullOrEmpty(query_id))
            {
                return;
            }
            if (int.TryParse(query_id, out int id))
            {
                res = true;
                this.hpl_edit.NavigateUrl = $"FrmEditEvidence.aspx?id={id}";
                this.hpl_delete.NavigateUrl = $"FrmDeleteEvidence.aspx?id={id}";
                ShowDetail(id);
            }
            else
            {
                return;
            }
            if (res)
            {
                this.div_viewbox.Visible = true;
            }

        }

        protected void ShowDetail(int id)
        {
            EvidenceRepository service = new EvidenceRepository();
            Evidence model = service.BrowseEvidence(id);

            this.lbl_id.Text = model.Id.ToString();
            this.lbl_name.Text = model.Name;
            this.lbl_content.Text = model.Content;
            this.lbl_createDate.Text = model.CreatedDate.ToString();
        }
    }
}