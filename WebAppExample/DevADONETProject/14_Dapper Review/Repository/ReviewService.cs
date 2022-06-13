using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace DevADONETProject._14_Dapper_Review
{
    public class ReviewService : IReviewService
    {
        public bool OPEN_DB(SqlConnection conn)
        {
            if(conn.State == ConnectionState.Closed)
            {
                conn.Open();
                return true;
            }
            return false;
        }

        public void CLOSE_DB(SqlConnection conn)
        {
            if (conn.State == ConnectionState.Open) 
            {
                conn.Close();
            }
        }

        public Review BrowseReview(int id)
        {
            var conn = new SqlConnection(Connection._connection);
            
            OPEN_DB(conn);
            string proc = "[dbo].[BrowseReview]";
            var p = new DynamicParameters();
            p.Add("@ID", id);
            try
            {
                Review review = conn.Query<Review>(proc, p, commandType: CommandType.StoredProcedure).Single();
                CLOSE_DB(conn);
                return review;
            }
            catch
            {
                CLOSE_DB(conn);
                return null;
            }

        }

        public Review CraeteReview(Review review)
        {
            using(var conn = new SqlConnection(Connection._connection))
            {
                if (OPEN_DB(conn))
                {
                    string proc = "[dbo].[CreateReview]";
                    var p = new DynamicParameters();
                    p.Add("@NAME", review.Name);
                    p.Add("@TITLE", review.Title);
                    p.Add("@POSTIP", review.PostIP);
                    review.Id = conn.Query<int>(proc, p, commandType: CommandType.StoredProcedure).Single();
                    CLOSE_DB(conn);
                    return review;
                }
                else
                {
                    CLOSE_DB(conn);
                    return null;
                }
             
            }
        }

        public bool DeleteReview(int id)
        {
            int res = 0;
            var conn = new SqlConnection(Connection._connection);
            OPEN_DB(conn);
            var proc = "[dbo].[DeleteReview]";
            var p = new DynamicParameters(); ;
            p.Add("@ID", id);
            try
            {
                res = conn.Execute(proc, p, commandType: CommandType.StoredProcedure);
            }
            catch
            {
                res = 0;
            }

            CLOSE_DB(conn);
            return res > 0;
        }

        public List<Review> ReadAllReview()
        {
            using (var conn = new SqlConnection(Connection._connection))
            {
                if (OPEN_DB(conn))
                {
                    var proc = "dbo.ReadAllReview";
                  
                    var list = conn.Query<Review>(proc, commandType: CommandType.StoredProcedure).ToList();
                    CLOSE_DB(conn);
                    return list;
                }
                else
                {
                    CLOSE_DB(conn);
                    return null;
                }
            
            }
        }

        public List<Review> SearchReview(string searchField, string searchValue)
        {
            var conn = new SqlConnection(Connection._connection);
            OPEN_DB(conn );

            var proc = "[dbo].[SearchReview]";
            var p = new DynamicParameters();
            p.Add("@SearchField", searchField);
            p.Add("@SearchValue", searchValue);

            var res = conn.Query<Review>(proc, p, commandType: CommandType.StoredProcedure).ToList();

            return res;
        }

        public bool UpdateReview(Review review)
        {
            var conn = new SqlConnection(Connection._connection);
            OPEN_DB(conn);

            var proc = "[dbo].[UpdateReview]";
            var p = new DynamicParameters();
            p.Add("@ID", review.Id);
            p.Add("@TITLE", review.Title);
            p.Add("POSTIP", review.PostIP);

            var res = conn.Execute(proc, p, commandType: CommandType.StoredProcedure);

            CLOSE_DB(conn);
            return res > 0;
        }
    }
}