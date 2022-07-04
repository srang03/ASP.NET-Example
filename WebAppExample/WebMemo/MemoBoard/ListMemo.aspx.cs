using System;
using WebMemo.Models;

namespace WebMemo.MemoBoard
{
    public partial class ListMemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MemoRepository service = new MemoRepository();
            int page = 1;
            int pageSize = 10;
            if (!string.IsNullOrEmpty(Request["page"]))
            {
                if (int.TryParse(Request["page"], out page))
                {

                }
            }
            Response.Write(Session["user_id"]);
            this.dg_list.DataSource = service.ListMemo(page);
            this.dg_list.DataBind();

            var total = service.GetCountRecord();

            Pagination(page, pageSize, total);
        }

        protected void Pagination(int page, int pageSize, int total)
        {

            if (page > 0 && page < (total - 1 / pageSize) + 1)
            {
                lbl_pagenation.Text = string.Empty;
                int page_ = page - 1;
                int total_ = total - 1;
                int prev = page - 1 > 0 ? page - 1 : 1;
                int next = page < (total / pageSize) + 1 ? page + 1 : (total / pageSize) + 1;

                lbl_pagenation.Text += $"<a href='ListMemo.aspx?page={prev}'>◁</a> ";
                for (int i = ((page_ / pageSize) * pageSize) + 1; i < ((page_ / pageSize) + 1) * pageSize + 1; i++)
                {
                    // 20 / 10
                    if (i > (total_ / pageSize) + 1)
                    {
                        break;
                    }
                    if (page == i)
                    {
                        lbl_pagenation.Text += $"<a href='ListMemo.aspx?page={i}'><b>{i}</b></a> ";
                    }
                    else
                    {
                        lbl_pagenation.Text += $"<a href='ListMemo.aspx?page={i}'>{i}</a> ";
                    }
                }
                lbl_pagenation.Text += $"<a href='ListMemo.aspx?page={next}'>▷</a> ";
            }
        }

        protected void btn_createMemos_Click(object sender, EventArgs e)
        {
            MemoRepository service = new MemoRepository();
            for (int i = 70; i < 90; i++)
            {
                service.CreateMemo(new MemoModel()
                {
                    TITLE = $"TestMemo{i}",
                    CONTENT = $"tesetsetsetestsetsetsette{i*10}dtastrERP{i}",
                    IPADDRESS = Request.UserHostAddress,
                    USER_ID = 3
                });
            }
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {

        }
    }
}