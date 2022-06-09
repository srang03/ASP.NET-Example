using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._14_Dapper
{
    public partial class FrmDeleteEvidence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string query_id = Request["id"];

            if(int.TryParse(query_id, out int id))
            {
                EvidenceRepository service = new EvidenceRepository();
                service.DeleteEvidence(id);
                Response.Redirect("FrmListEvidence.aspx");
            }
            else
            {
                return;
            }
         
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            string query_id = Request["id"];

            if (int.TryParse(query_id, out int id))
            {
                Response.Redirect($"FrmViewEvidence.aspx?id={id}");
            }
            else
            {
                return;
            }
        }
    }
}