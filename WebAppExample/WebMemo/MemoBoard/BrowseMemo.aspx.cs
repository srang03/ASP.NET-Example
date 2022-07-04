using System;
using WebMemo.Models;

namespace WebMemo.MemoBoard
{
    public partial class BrowseMemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Request["id"];
            if (string.IsNullOrEmpty(str))
            {
                Response.Redirect("ListMemo.aspx");
            }
            else
            {
                if (int.TryParse(Request["id"], out int id))
                {
                    MemoRepository service = new MemoRepository();
                    MemoModel memo = service.BrowseMemo(id);
                    this.lbl_title.Text = memo.TITLE;
                    this.lbl_name.Text = memo.NAME;
                    this.lbl_date.Text = memo.CREATED.ToString();
                    this.lbl_content.Text = memo.CONTENT;
                }
            }
        }
    }
}