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
    public partial class FrmMemoDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string message = String.Empty;
            this.div_deleted.Visible = false;
            string id = Request["ID"];
            bool pass = false;
            if (String.IsNullOrEmpty(id))
            {
                message = "잘못된 접근입니다.";
                ShowMessage(message);
            }
            else
            {
                if(int.TryParse(id, out int id_int))
                {
                    hpl_back.NavigateUrl = $"FrmMemoView.aspx?id={id}";
                    pass = true;
                }
                else
                {
                    message = "잘못된 접근입니다.";
                    ShowMessage(message);
                }
            }

            if (!pass)
            {
                this.div_deleted.Visible = true;
                this.div_info.Visible = false;
            }
     

            if (!IsPostBack)
            {
                
            }
        }

        protected void ShowMessage(string message)
        {
            this.lbl_result.Text = message;
        }

        protected void DeleteMemo()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                string message = "";
                string proc = "dbo.DeleteMemo";
                conn.Open();

                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                if(int.TryParse(Request["id"], out int id))
                {
                    
                    cmd.Parameters.AddWithValue("@ID", id);
                    var res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        message = "정상적으로 삭제되었습니다.";
                    }
                    else
                    {
                        message = "정상적으로 처리되지 않았습니다.";
                    }
                    ShowMessage(message);
                    this.div_info.Visible = false;
                    this.div_deleted.Visible = true;
                }
                else
                {
                    message = "다시 시도해주세요.";
                    ShowMessage(message);
                }
                conn.Close();
            }
        }

        protected void btn_deleteMemo_Click(object sender, EventArgs e)
        {
            DeleteMemo();
        }
    }
}