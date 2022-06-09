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
    public partial class FrmMemoModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string message = "";
            bool pass = false;
            // [1] ID값이 있는지?
            string id = Request["ID"];
            if (String.IsNullOrEmpty(id))
            {
                message = "올바르지 않은 접근입니다.";
            }
            else
            {
                if (!IsPostBack)
                {
                    if (int.TryParse(id, out int id_int))
                    {
                        pass = PrintView(id_int);
                    }
                    else
                    {
                        message = "올바른 ID값을 입력해주세요.";
                    }
                }

            }
            if (!pass)
            {
                div_bottomBox.Visible = false;
                div_inputBox.Visible = false;
                ShowMessage(message);
            }
        }

        protected void ShowMessage(string msg)
        {
            this.lbl_message.Text = msg;
        }

        protected bool PrintView(int id)
        {
            bool result = false;
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                string proc = "dbo.ViewMemo";
                conn.Open();
                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", id);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    this.lbl_name.Text = dr["NAME"].ToString();
                    this.lbl_email.Text = dr["EMAIL"].ToString();
                    this.txb_title.Text = dr["TITLE"].ToString();
                    this.lbl_postDate.Text = dr.GetDateTime(4).ToString();
                    result = true;
                }
                else
                {

                }
                conn.Close();

            }
            return result;
        }

        protected void btn_modify_Click(object sender, EventArgs e)
        {
            string title = this.txb_title.Text;
            string message = "";
            
            int id = int.Parse(Request["id"]);

            if (String.IsNullOrEmpty(title))
            {
                message = "Title을 입력해주세요";
            }
            else
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
                {
                    string proc = "dbo.ModifyMemo";
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(proc, conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", id);
                    cmd.Parameters.AddWithValue("@TITLE", title);
                    cmd.Parameters.AddWithValue("@POSTIP", Request.UserHostAddress);

                    int res = cmd.ExecuteNonQuery();

                    cmd.Dispose();
                    conn.Close();

                    if(res > 0)
                    {
                        Response.Redirect($"FrmMemoView.aspx?id={id}&res={res}");
                    } 
                    else
                    {
                        message = "정상적으로 처리되지 않았습니다.";
                    }
                }
            }
            ShowMessage(message);
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {

        }
    }
}
