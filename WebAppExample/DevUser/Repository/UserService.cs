using Dapper;
using DevADONETProject._17_UserControl;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace DevUser.Repository
{
    public class UserService : IUserService
    {
        private SqlConnection conn;
        public UserService()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        }

        public void AddUser(UserModel user)
        {
            string proc = "dbo.CreateUsers";
            var parm = new DynamicParameters();
            parm.Add("@USERID", user.UserId);
            parm.Add("@USERPASSWORD", user.UserPassword);
            conn.Execute(proc, parm, commandType: CommandType.StoredProcedure);
        }

        public bool DeleteUser(int id)
        {
            string proc = "dbo.DeleteUsers";
            var parm = new DynamicParameters();
            parm.Add("@ID", id);
            var res = conn.Execute(proc, parm, commandType: CommandType.StoredProcedure);
            return res > 0;
        }

        public UserModel GetUser(int id)
        {
            string proc = "dbo.ViewUsers";
            var parms = new DynamicParameters();
            parms.Add("@ID", id);
            return conn.Query<UserModel>(proc, parms, commandType:CommandType.StoredProcedure).Single();
        }

        public bool IsCollectUser(string userId, string userPassword)
        {
            string proc = "dbo.IsCollectUser";
            var parm = new DynamicParameters();
            parm.Add("@USERID", userId);
            parm.Add("@USERPASSWORD", userPassword);
            var res = conn.Execute(proc, parm, commandType: CommandType.StoredProcedure);

            return res > 0;
        }

        public List<UserModel> ListUser()
        {
            string proc = "dbo.ListUsers";
            return conn.Query<UserModel>(proc, commandType: CommandType.StoredProcedure).ToList();
        }

        public bool ModifyUser(UserModel user)
        {
            string proc = "dbo.ModifyUsers";
            var parm = new DynamicParameters();
            parm.Add("@ID", user.Id);
            parm.Add("@USERPASSWORD", user.UserPassword);

            var res = conn.Execute(proc, parm, commandType: CommandType.StoredProcedure);
            return res > 0;
        }
    }
}