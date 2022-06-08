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
    public partial class FrmMemoList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListMemo();
            }
            else
            {

            }
        }

        protected void ListMemo()
        {
            string proc = "dbo.ListMemos";
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            conn.Open();

            SqlCommand cmd = new SqlCommand(proc, conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            conn.Close();

            DataSet ds = new DataSet();

            da.Fill(ds);
            gdv_memos.DataSource = ds;
            gdv_memos.DataBind();
        }

        protected void SearchListMemo()
        {
            string proc = "dbo.SearchMemo";
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            conn.Open();

            SqlCommand cmd = new SqlCommand(proc, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SearchField", ddl_searchCategory.SelectedValue);
            cmd.Parameters.AddWithValue("@SearchValue", txb_searchValue.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

           
            DataTable dt = ds.Tables[0];
            gdv_memos.DataSource = dt;
            gdv_memos.DataBind();
            conn.Close();
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            SearchListMemo();
        }
    }
}