using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebMemo.Models
{
    public class MemoRepository
    {
        private SqlConnection _conn;
        private string _proc;
        private System.Data.CommandType _commandType;

        public MemoRepository()
        {
            _conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            _proc = string.Empty;
            _commandType = System.Data.CommandType.StoredProcedure;
        }

        public bool CreateMemo(MemoModel memo)
        {
            DynamicParameters _parms = new DynamicParameters();

            _parms.Add("@TITLE", memo.TITLE, System.Data.DbType.String);
            _parms.Add("@CONTENT", memo.CONTENT, System.Data.DbType.String);
            _parms.Add("@USER_ID", memo.USER_ID, System.Data.DbType.Int32);
            _parms.Add("@IPADDRESS", memo.IPADDRESS, System.Data.DbType.String);
            _proc = "dbo.CreateMemo";
            var res = _conn.Execute(_proc, _parms, commandType: _commandType);
            return res > 0;
        }

        public bool ModifyMemo(MemoModel memo)
        {
            DynamicParameters _parms = new DynamicParameters();

            _parms.Add("@TITLE", memo.TITLE, System.Data.DbType.String);
            _parms.Add("@CONTENT", memo.CONTENT, System.Data.DbType.String);
            _parms.Add("@USER_ID", memo.USER_ID, System.Data.DbType.Int32);
            _parms.Add("@ID", memo.USER_ID, System.Data.DbType.Int32);
            _proc = "ModifyMemo";
            return _conn.Execute(_proc, _parms, commandType: _commandType) > 0;
            
        }

        public bool DeleteMemo(int id, int userid)
        {
            DynamicParameters _parms = new DynamicParameters();

            _parms.Add("@ID", id, System.Data.DbType.Int32);
            _parms.Add("@USER_ID", id, System.Data.DbType.Int32);
            _proc = "DeleteMemo";
            return _conn.Execute(_proc, _parms, commandType: _commandType) > 0;
        }

        public List<MemoModel> ListMemo(int page)
        {
            DynamicParameters _parms = new DynamicParameters();
            _parms.Add("@PAGE", page, System.Data.DbType.Int32);
            _proc = "ListMemo";
            return _conn.Query<MemoModel>(_proc, _parms, commandType: _commandType).ToList();
        }
        
        public MemoModel BrowseMemo(int id)
        {
            DynamicParameters _parms = new DynamicParameters();
            _parms.Add("@ID", id);
            _proc = "BrowseMemo";
            return _conn.Query<MemoModel>(_proc, _parms, commandType: _commandType).SingleOrDefault();
        }

    }
}