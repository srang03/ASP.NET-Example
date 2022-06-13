using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace DevADONETProject._14_Dapper_Review
{
    public static class Connection
    {
        public static readonly string _connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    }
}