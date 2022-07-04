using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebMemo.Models
{
    public class UserRepository
    {
        private SqlConnection _conn;
        private string _proc;
        public UserRepository()
        {
            _conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            _proc = string.Empty;
        }

        public int IsCollectUser(string email, string password)
        {
            DynamicParameters parms = new DynamicParameters();
            parms.Add("@EMAIL", email);
            parms.Add("@PASSWORD", password);
            _proc = "dbo.IsCollectUser";
            return _conn.Query<int>(_proc, parms, commandType: System.Data.CommandType.StoredProcedure).SingleOrDefault();
        }

        public bool CreateUser(UserModel user)
        {
            DynamicParameters parms = new DynamicParameters();
            parms.Add("@EMAIL", user.EMAIL, System.Data.DbType.String);
            parms.Add("@PASSWORD", user.PASSWORD, System.Data.DbType.String);
            parms.Add("@NAME", user.NAME, System.Data.DbType.String);
            _proc = "dbo.CreateUser";
            return _conn.Execute(_proc, parms, commandType: System.Data.CommandType.StoredProcedure) > 0;
        }
    }
}