using System;
using System.Data.SqlClient;
using System.Configuration;

namespace DevADONETProject
{
    public partial class FrmSqlConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_sqlConnection_Click(object sender, EventArgs e)
        {
            // [1] SqlConnection 클래스 인스턴스 생성
            SqlConnection conn = new SqlConnection();

            // [2] ConnectionString 속성 설정
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            // [3] DB 오픈
            conn.Open();

            // [4] 실행
            lbl_sqlConnection.Text = conn.State.ToString();

            // [5] 연결 종료
            conn.Close();

            
        }
    }
}