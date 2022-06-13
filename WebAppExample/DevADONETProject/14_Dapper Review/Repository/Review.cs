using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DevADONETProject._14_Dapper_Review
{
    public class Review
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Title { get; set; }
        public DateTime PostDate { get; set; }
        public string PostIP { get; set; }
        public Review()
        {

        }
        
        public Review(int id)
        {
            Id = id;
        }
        public Review(int id, string name, string title, DateTime postDate, string postIP)
        {
            Id = id;
            Name = name;
            Title = title;
            PostDate = postDate;
            PostIP = postIP;
        }

        public Review(string name, string title)
        {
            Name = name;
            Title = title;
        }

        public Review(string name, string title, string postIP)
        {
            Name = name;
            Title = title;
            this.PostIP = postIP;
        }
    }
}