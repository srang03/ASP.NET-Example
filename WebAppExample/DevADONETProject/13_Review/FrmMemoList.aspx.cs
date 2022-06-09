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
    public partial class FrmMemoList : System.Web.UI.Page
    {
        string message = "";
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
            using(var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                string proc = "dbo.ListMemos";
                conn.Open();
                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                this.grd_data.DataSource = ds;
                this.grd_data.DataBind();
            }
        }

        protected void ListMemoInSearch(string field, string value)
        {
            using(var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                string proc = "dbo.SearchMemo";
                conn.Open();

                SqlCommand cmd = new SqlCommand(proc, conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@SearchField", field);
                cmd.Parameters.AddWithValue("@SearchValue", value);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                this.grd_data.DataSource = ds.Tables[0];
                this.grd_data.DataBind();
            }
        }

        protected void btn_createMemo_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmMemoCreate.aspx");
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            // [1] 필드, 밸류 존재할 경우
            if (String.IsNullOrEmpty(this.txb_searchValue.Text))
            {
                message = "검색어를 입력해주세요.";
                PrintMessage(message);
            }
            else
            {
                string field = this.ddl_searchField.SelectedValue;
                string value = this.txb_searchValue.Text;
                ListMemoInSearch(field, value);
            }
        }

        protected void PrintMessage(string messge)
        {
            lbl_message.Text = messge;
        }
    }
}