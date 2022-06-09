using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._14_Dapper
{
    public partial class FrmListEvidence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowAll();
        }
        protected void ShowAll()
        {
            EvidenceRepository service = new EvidenceRepository();
            this.grdv_list.DataSource = service.GetAllEvidence();
            this.grdv_list.DataBind();
        }
    }
}