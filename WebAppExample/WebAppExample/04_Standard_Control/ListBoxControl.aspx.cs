using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._04_Standard_Control
{
    public partial class ListBoxControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbx_01.Items.Add(new ListItem("축구", "1"));
                lbx_01.Items.Add(new ListItem("배구", "2"));
                lbx_01.Items.Add(new ListItem("야구", "3"));
            }
            var hello = "Hello";
        }

        protected void lbx_01_SelectedIndexChanged(object sender, EventArgs e)
        {
         

        }

        protected void btn_01_Click(object sender, EventArgs e)
        {
            List<string> list = new List<string>();

            for (int i = 0; i < lbx_01.Items.Count; i++)
            {
                if (lbx_01.Items[i].Selected)
                {
                    list.Add(lbx_01.Items[i].Text);
                }
            }

            lbl_01.Text = String.Join(",", list);

        }
    }
}