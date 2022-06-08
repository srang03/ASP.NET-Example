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
    public partial class FrmMemoView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request["id"];
            if (String.IsNullOrEmpty(id))
            {
                Response.Write("올바른 경로가 아닙니다.");
                Response.End();
            }
            else
            {
                DetailView();
                hlk_createMemo.NavigateUrl = "~/13_CRUD/FrmMemoCreate.aspx";
                hlk_modifyMemo.NavigateUrl = $"~/13_CRUD/FrmMemoModify.aspx?id={id}";
                hlk_deleteMemo.NavigateUrl = $"~/13_CRUD/FrmMemoDelete.aspx?id={id}";
            }
        }

        protected void DetailView()
        {
            string proc = "dbo.ViewMemo";
            int id;
            if (int.TryParse(Request["id"],out id))
            {
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
                    lbl_id.Text = dr["ID"].ToString();
                    lbl_name.Text = dr["NAME"].ToString();
                    lbl_email.Text = dr[2].ToString();
                    lbl_title.Text = dr.GetString(3);
                    lbl_postDate.Text = dr.GetDateTime(4).ToString();
                    lbl_postIp.Text = dr["POSTIP"].ToString();
                }
                else
                {
                    Response.Write("없는 데이터입니다.");

                }
                conn.Close();               
                dr.Close();
                
            }
            else
            {
                Response.Write("올바른 경로가 아닙니다.");
            }

         
        }
    }
}