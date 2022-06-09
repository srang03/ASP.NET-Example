using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._13_Review
{
    public partial class FrmMemoCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_createMemo_Click(object sender, EventArgs e)
        {
            // [1] 빈칸 예외처리
            string name = this.txb_name.Text;
            string email = this.txb_email.Text;
            string title = this.txb_title.Text;
            string message = "";
            if (String.IsNullOrEmpty(name))
            {
                message = "이름을 입력해주세요";
            }
            else if (String.IsNullOrEmpty(email))
            {
                message = "이메일을 입력해주세요";
            }
            else if (String.IsNullOrEmpty(title))
            {
                message = "제목을 입력해주세요.";
            }
            else
            {
                CreateMemo(name, email, title);
            }

            lbl_message.Text = message;
        }

        protected void CreateMemo(string name, string email, string title)
        {
            string proc = "dbo.CreateMemo";

            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NAME", name);
                cmd.Parameters.AddWithValue("@EMAIL", email);
                cmd.Parameters.AddWithValue("@TITLE", title);
                cmd.Parameters.AddWithValue("@POSTIP", Request.UserHostAddress);

                var id = cmd.ExecuteScalar();

                conn.Close();

                Response.Redirect($"FrmMemoView.aspx?id={id}");
            }

        }
    }
}