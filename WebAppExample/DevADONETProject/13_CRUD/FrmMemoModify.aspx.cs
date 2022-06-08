using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject._13_CRUD
{
    public partial class FrmMemoModify : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            hpl_MemoList.NavigateUrl = "FrmMemoList.aspx";
            string queryString = Request.QueryString["id"];
            if (String.IsNullOrEmpty(queryString))
            {
                // [1] id가 null인 경우
                Response.Write("올바른 경로가 아닙니다. [null]");
            }
            else
            {
                // [2] id가 null이 아닌 경우
                if (!IsPostBack)
                {
                    if (int.TryParse(queryString, out int id))
                    {
                        GetData(id);
                    }
                    else
                    {
                        Response.Write("올바른 경로가 아닙니다. [postback]");
                        Response.End();
                    }
                }
      
            }
        }

        protected void btn_modify_Click(object sender, EventArgs e)
        {
            if (int.TryParse(Request["id"], out int id))
            {
                string proc = "dbo.ModifyMemo";
                Memo memo = new Memo(lbl_name.Text, lbl_email.Text, txt_title.Text);
                memo.ID = id;
                memo.PostIP = Request.UserHostAddress;

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                conn.Open();

                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", memo.ID);
                cmd.Parameters.AddWithValue("@NAME", memo.Name);
                cmd.Parameters.AddWithValue("@EMAIL", memo.Email);
                cmd.Parameters.AddWithValue("@TITLE", memo.Title);
                cmd.Parameters.AddWithValue("@POSTIP", memo.PostIP);

                cmd.ExecuteNonQuery();
                
                conn.Close();
                Response.Redirect($"~/13_CRUD/FrmMemoView.aspx?id={id}");
            }
            else
            {

            }
        }

        protected void GetData(int id)
        {
            string proc = "dbo.ViewMemo";
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            conn.Open();

            SqlCommand cmd = new SqlCommand(proc, conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("ID", SqlDbType.Int);
            cmd.Parameters["ID"].Value = id;

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lbl_name.Text = dr["ID"].ToString();
                lbl_email.Text = dr["EMAIL"].ToString();
                txt_title.Text = dr["Title"].ToString();
            }
            else
            {
                Response.Write("데이터가 없습니다.");
                btn_content.Disabled = false;
                Response.End();
            }
            dr.Close();
            conn.Close();

        }
    }
}