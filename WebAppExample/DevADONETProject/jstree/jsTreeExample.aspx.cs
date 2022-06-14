using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONETProject.jstree
{
    public partial class jsTreeExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
    
        }
    }

    public class JsTreeFormat
    {
        public string Parent { get; set; }
        public string Depth { get; set; }
        public int CustomerId { get; set; }
        public string Id { get; set; }
        public string text { get; set; }
    }
}