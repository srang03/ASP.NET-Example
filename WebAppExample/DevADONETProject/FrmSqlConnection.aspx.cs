using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject
{
    public partial class FrmSqlConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_connection_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();


            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conn.Open();
            lbl_result.Text = conn.State.ToString();

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = conn;
            cmd.CommandText = @"
                INSERT INTO dbo.Memos VALUES ('홍길동', 'h@h.com', '타이틀 테스트', GETDATE(), '127.0.0.1')
            ";

            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            lbl_result.Text = "데이터 저장 완료";
            conn.Close();
  
        }
    }
}