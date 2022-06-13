using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DevADONETProject._14_Dapper_Review
{
    internal interface IReviewService
    {
        List<Review> ReadAllReview();

        Review CraeteReview(Review review);

        bool UpdateReview(Review review);

        bool DeleteReview(int id);

        List<Review> SearchReview(string searchField, string searchValue);

        Review BrowseReview(int id);
    }
}
