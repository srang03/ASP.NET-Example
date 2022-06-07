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
    public partial class FrmSqlCommand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_executeSql_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;

            conn.Open();
            string query = @"INSERT INTO [dbo].[Memos] (NAME, EMAIL, TITLE, POSTIP)
                                    VALUES ('ASP.NET TEST', 'ASP@naver.com', 'ASP.NET', '121.0.0.7')";
            // [1] SqlCommand
            SqlCommand command = new SqlCommand(query, conn);

            
            command.ExecuteNonQuery();

            conn.Close();
            lbl_sqlResult.Text = "실행 완료";

        }
    }
}