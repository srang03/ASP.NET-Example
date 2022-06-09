using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Connection
    {
        private static string _connectionString = @"
             Data Source = 121.190.105.66;
			 database=Exercise;
			 User ID = urock;
             Password= urock123;
			 Connect Timeout = 30;";

        public static string ConnectionString
        {
            get { return _connectionString; }
        }
    }
    public class Evidence
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Content { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}