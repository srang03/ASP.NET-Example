using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._13_CRUD
{
    public partial class FrmMemoDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int.TryParse(Request["id"], out int id);
            hlk_list.NavigateUrl = $"/FrmMemoList.aspx";

            if (!IsPostBack)
            {

            }
        }

        protected void btn_deleteMemo_Click(object sender, EventArgs e)
        {
            
            if (int.TryParse(Request["id"], out int id)){
                string proc = "dbo.DeleteMemo";
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                conn.Open();

                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", id);

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("FrmMemoList.aspx");
            }
            
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            if(int.TryParse( Request["id"], out int id))
            {
                Response.Redirect($"FrmMemoView.aspx?id={id}");
            }
            else
            {
                Response.Write("잘못된 접근입니다.");
                Response.End();
            }
            
        }
    }
}