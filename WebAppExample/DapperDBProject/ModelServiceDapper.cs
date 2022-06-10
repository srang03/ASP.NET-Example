using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Dapper;

namespace DapperDBProject
{
    public class ModelServiceDapper : IModelService
    {
        private string _conn;
        private IDbConnection conn;
        private const string _db = "dbo.Model";

        public ModelServiceDapper()
        {
            _conn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            conn = new SqlConnection(_conn);
        }

        private void DbOpen(IDbConnection conn)
        {
            if(conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        }

        private void DbClose(IDbConnection conn)
        {
            if(conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        public Model BrowseModel(int id)
        {
            Model result = null;
            DbOpen(conn);
            string query = $"SELECT ID, NAME, CREATED, ISACTIVE FROM {_db} WHERE id = @Id";
            try
            {
                result = conn.Query<Model>(query, new { Id = id }).Single();
            }
            catch
            {
                result = null;
            }
          
            DbClose(conn);
            return result;
        }

        public Model CraeteModel(Model model)
        {
            DbOpen(conn);
            string query = $"INSERT INTO {_db} (NAME, ISACTIVE) VALUES (@Name, @IsActive); SELECT CAST(SCOPE_IDENTITY() AS Int)";
            model.Id = conn.Query<int>(query, model).Single();
            DbClose(conn);

            return model;
        }

        public bool DeleteModel(int id)
        {
            DbOpen(conn);
            string query = $"DELETE FROM {_db} WHERE ID = @Id";
            var result = conn.Execute(query, new { Id = id });
            DbClose(conn);

            return result > 0;
        }

        public List<Model> ReadModel()
        {
            DbOpen(conn);
            string query = $"SELECT ID, NAME, CREATED, ISACTIVE FROM {_db} ORDER BY ID DESC";
            var result = conn.Query<Model>(query).ToList();
            DbClose(conn);
            return result;
        }

        public List<Model> ReadSearchModel(string field, string value)
        {
            DbOpen(conn);
            string query = $"SELECT ID, NAME, CREATED, ISACTIVE FROM {_db} WHERE @Field LIKE '%{value}%' ORDER BY ID DESC";
            var result = conn.Query<Model>(query, new {Field = field}).ToList();
            DbClose(conn);

            return result;
        }

        public bool UpdateModel(Model model)
        {
            DbOpen(conn);
            string query = $"UPDATE {_db} SET NAME = @Name, ISACTIVE = @IsActive WHERE ID = @Id";
            var result = conn.Execute(query, model);
            DbClose(conn);

            return result > 0;
        }
    }
}