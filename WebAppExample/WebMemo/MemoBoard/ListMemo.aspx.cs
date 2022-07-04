using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMemo.Models;

namespace WebMemo.MemoBoard
{
    public partial class ListMemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MemoRepository service = new MemoRepository();
            int page = 1;
            if (!string.IsNullOrEmpty(Request["page"]))
            {
                if(int.TryParse(Request["page"], out page))
                {

                }
            }
            this.dg_list.DataSource = service.ListMemo(page);
            this.dg_list.DataBind();
        }
    }
}