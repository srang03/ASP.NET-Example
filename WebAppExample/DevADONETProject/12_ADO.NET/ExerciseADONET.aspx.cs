using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace DevADONETProject
{
    public partial class ExerciseADONET : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListMemos();

        }

        protected void ListMemos()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            string query = @"SELECT ID, POSTDATE, NAME, TITLE, POSTIP FROM Memos";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = System.Data.CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataSet ds = new DataSet();
            da.Fill(ds);

            DataTable table = ds.Tables[0];
            gdv_Memos.DataSource = table;
            gdv_Memos.DataBind();

        }
    }
}