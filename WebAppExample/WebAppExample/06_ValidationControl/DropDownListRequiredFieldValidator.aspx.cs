using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._06_ValidationControl
{
    public partial class DropDownListRequiredFieldValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddl_value.Items.Insert(0, new ListItem("-- 선택해주세요 --", "-1"));

                for(int i = 0; i < 10; i++)
                {
                    ListItem li = new ListItem(i.ToString() +"Data", $"{i}");
                    ddl_value.Items.Add(li);
                }
            }
        }

        protected void btn_select_Click(object sender, EventArgs e)
        {
            lbl_select.Text = ddl_value.SelectedValue;
        }
    }
}