using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DevADONETProject._13_CRUD
{
    public class Memo
    {
        public Memo() : base()
        {

        }

        public Memo(string name, string email, string title)
        {
            Name = name;
            Email = email;
            Title = title;
        }

        public int ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Title { get; set; }
        public DateTime PostDate { get; set; }
        public string PostIP { get; set; }
    }
}