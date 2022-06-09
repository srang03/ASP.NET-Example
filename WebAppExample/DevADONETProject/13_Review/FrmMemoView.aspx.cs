using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._13_Review
{
    public partial class FrmMemoView : System.Web.UI.Page
    {
        private bool pass = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            // [1] QueryString ID값이 NULL값일 경우
            var id = Request.QueryString["id"];
            string message = "";
           
            if (String.IsNullOrEmpty(id))
            {
                message = "올바른 경로를 입력해주세요";
            }
            else
            {
                // [2] id값이 올바른지 (정수)
                if(int.TryParse(id, out int id_int))
                {
                    //[3] id 값이 올바른 수인지 (양수 체크)
                    if(id_int > 0 && id_int < 100000000)
                    {
                        pass = ShowDetail(id_int, ref message);
                        
                    }
                    else
                    {
                        message = "올바른 id를 입력해주세요";
                    }
                }
                else
                {
                    message = "올바른 id를 입력해주세요";
                }  
            }

            if (!pass)
            {
                div_bottomButton.Visible = false;
            }

            this.lbl_message.Text = message;
        }

        protected bool ShowDetail(int id, ref string message)
        {
            bool pass = false;   
            using(var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                conn.Open();
                string proc = "dbo.ViewMemo";
                SqlCommand cmd = new SqlCommand(proc, conn);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", id);

                SqlDataReader dr = cmd.ExecuteReader();
               
                if (dr.Read())
                {
                    this.lbl_name.Text = dr["NAME"].ToString();
                    this.lbl_email.Text = dr["EMAIL"].ToString();
                    this.lbl_title.Text = dr["TITLE"].ToString();
                    this.lbl_postDate.Text = dr.GetDateTime(4).ToString();
                    pass = true;
                }
                else
                {
                    message = "요청하신 데이터가 없습니다";
                    pass = false;
                }
                conn.Close();

                return pass;
            }
        }

        protected void btn_modifyMemo_Click(object sender, EventArgs e)
        {
            Response.Redirect($"FrmMemoModify.aspx?id={Request.QueryString["id"]}");
        }

        protected void btn_deleteMemo_Click(object sender, EventArgs e)
        {
            Response.Redirect($"FrmMemoDelete.aspx?id={Request.QueryString["id"]}");
        }

      
    }
}