using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DevADONETProject._15_DataControl
{
    public class ObjectDataSourceClass
    {
        public SqlDataReader GetMemos()
        {
            var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            conn.Open();
            var cmd = new SqlCommand("dbo.ListMemos", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            return cmd.ExecuteReader(CommandBehavior.CloseConnection);
        }
    }
}