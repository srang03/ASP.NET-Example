using System;
using System.Collections.Generic;
using System.IO;
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
                string extension = Path.GetExtension(upload.FileName);
                string file_name = DateTime.Now.ToString("yyyyMMddHHmmssFFF") + extension;

                upload.SaveAs(Server.MapPath(".") + "\\files\\" + file_name);
                resultLabel.Text = String.Format("<a href='{0}{1}'>{1}</a>", "./files/", Server.UrlEncode(file_name));
            }
            else
            {
                
            }
        }
    }
}