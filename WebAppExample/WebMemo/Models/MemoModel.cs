using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMemo.Models
{
    public class MemoModel
    {
        public int ID { get; set; }
        public string TITLE { get; set; }
        public string CONTENT { get; set; }
        public DateTime CREATED { get; set; }
        public string IPADDRESS { get; set; }
        public int USER_ID { get; set; }
        public string NAME { get; set; }
        public int ROW_ID { get; set; }
    }
}