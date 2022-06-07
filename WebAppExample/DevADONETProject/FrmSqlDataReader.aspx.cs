using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace DevADONETProject
{
    public partial class FrmSqlDataReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListData();
            }
        }

        protected void ListData()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            conn.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = @"SELECT ID, NAME, EMAIL, TITLE, POSTDATE, POSTIP FROM [dbo].[Memos]";

            cmd.CommandType = System.Data.CommandType.Text;

            SqlDataReader dr = cmd.ExecuteReader();

            string output = "<table>";
            while (dr.Read())
            {
                output += $"<tr> <td> {dr["ID"]} </td> <td>{dr[1]}</td> <td>{dr.GetDateTime(4)} </td> <td>{dr.GetString(5)} </td> " +
                    $"</tr>";
            }

            output += "</table>";

            lbl_result.Text = output;

            dr.Close();
        }
    }
}