using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebAppExample._04_Standard_Control
{
    public partial class Standard_Control : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TableRow tr = new TableRow();
            
            TableCell td = new TableCell();

            LiteralControl literalControl = new LiteralControl();
            

            td.Controls.Add(literalControl);
            tr.Controls.Add(td);

            Table2.BorderWidth = 1;
            Table2.Controls.Add(tr);

            if (!IsPostBack)
            {
        
                ddl_phone.Items.Add("1234");
                ddl_phone.Items.Add("1234");
                ddl_phone.Items.Add("1234");

                ddl_jobs.SelectedIndex = 0;

            }
          
        }

        protected void bll_favorite_Click(object sender, BulletedListEventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(bll_favorite.Items[e.Index].Text);
            sb.Append("<br/>");
            sb.Append(bll_favorite.Items[e.Index].Value);
            sb.Append("<br/>");
            sb.Append(bll_favorite.Items[e.Index].ToString());

            Response.Write(sb);

        }

        protected void ddl_jobs_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = ddl_jobs.SelectedItem.Text;
            lbl_selected.Text = str;
        }
    }
}