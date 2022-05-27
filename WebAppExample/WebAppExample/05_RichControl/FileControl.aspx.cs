using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._05_RichControl
{
    public partial class FileControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn01_Click(object sender, EventArgs e)
        {
            if (upload.HasFile)
            {
                Response.Write("hello");
            }
            else
            {
                Response.Write("Bye");
            }
        }
    }
}