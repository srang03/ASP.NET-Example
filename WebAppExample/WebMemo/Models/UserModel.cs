using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMemo.Models
{
    public class UserModel
    {
        public int ID { get; set; }
        public string NAME { get; set; }
        public string EMAIL { get; set; }
        public string PASSWORD { get; set; }
        public DateTime CREATED { get; set; }
    }
}