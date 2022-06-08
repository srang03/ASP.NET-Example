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
    public partial class FrmMemoCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_memoWrite_Click(object sender, EventArgs e)
        {
            Memo memo = new Memo(txb_name.Text, txb_email.Text, txb_title.Text);
            memo.PostDate = DateTime.Now;
            memo.PostIP = Request.UserHostAddress;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            conn.Open();

            SqlCommand cmd = new SqlCommand("dbo.CreateMemo", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            // 파라미터 추가
            cmd.Parameters.AddWithValue("@Name", memo.Name);
            cmd.Parameters.AddWithValue("@EMAIL", memo.Email);
            cmd.Parameters.AddWithValue("@TITLE", memo.Title);
            cmd.Parameters.AddWithValue("@POSTIP", memo.PostIP);

            // 실행
            cmd.ExecuteNonQuery();

            conn.Close();

            lbl_result.Text = "실행이 완료되었습니다";

        }

        protected void btn_redirection_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmMemoCreate.aspx");
        }
    }
}