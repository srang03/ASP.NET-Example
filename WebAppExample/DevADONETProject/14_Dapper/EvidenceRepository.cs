using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Dapper;
using System.Threading.Tasks;

namespace DevADONETProject._14_Dapper
{
    public class EvidenceRepository : IEvidenceService
    {
        // [0] DB 연결
        private IDbConnection conn = new SqlConnection(Connection.ConnectionString);

        public Evidence BrowseEvidence(int id)
        {
            string sql = "SELECT ID, NAME, CONTENT, CREATEDATE FROM dbo.Evidence WHERE ID = @Id";
            return conn.Query<Evidence>(sql, new { Id = id }).Single();

        }

        public Evidence CreateEvidence(Evidence evidence)
        {
            conn.Open();
            string sql = @"INSERT INTO dbo.Evidence (NAME, CONTENT)
                                VALUES (@Name, @Content);
                            SELECT CAST(SCOPE_IDENTITY() AS INT);
                                ";

                    int id = conn.Query<int>(sql, evidence).Single();
                    evidence.Id = id;

            conn.Close();
            return evidence;
        }

        public bool DeleteEvidence(int id)
        {
            string sql = "DELETE FROM dbo.Evidence WHERE ID = @Id";
            int res = conn.Execute(sql, new { Id = id });
            return res > 0;
        }

        public bool EditEvidence(Evidence evidence)
        {
            string sql = "UPDATE dbo.Evidence SET NAME = @Name, CONTENT = @Content WHERE ID = @Id";
            int res = conn.Execute(sql, evidence);

            return res > 0;
        }

        public List<Evidence> GetAllEvidence()
        {
            string sql = "SELECT ID, NAME, CONTENT, CREATEDATE FROM dbo.Evidence ORDER BY ID DESC";
            var list = conn.Query<Evidence>(sql).ToList();
            return list;
        }

        public List<Evidence> SearchEvidence(string field, string value)
        {
            string sql = "SELECT ID, NAME, CONTENT, CREATEDATE FROM dbo.Evidence ORDER BY DESC";
            return conn.Query<Evidence>(sql).ToList();
        }



        // [2] 출력

        // [3] 상세

        // [4] 수정

        // [5] 삭제
    }
}