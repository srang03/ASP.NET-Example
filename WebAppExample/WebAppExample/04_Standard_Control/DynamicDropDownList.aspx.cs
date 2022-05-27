using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._04_Standard_Control
{
    public partial class DynamicDropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for(int i = 0; i< 3; i++)
            {
                DropDownList ddl = new DropDownList();
                ddl.ID = $"ddl{i}";
                ddl.Items.Add(new ListItem("C#", "1"));
                ddl.Items.Add(new ListItem("ASP.NET", "2"));
                ddl.Items.Add(new ListItem("JS", "3"));
                phd_01.Controls.Add(ddl);
            }
          

           
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            lbl_01.Text = " Value is ";
           
            for(int i =0; i< 3; i++)
            {
                DropDownList ddl = phd_01.FindControl($"ddl{i}") as DropDownList;

                if(ddl != null)
                {
                    lbl_01.Text += ddl.SelectedItem.ToString();
                }
            }
        }
    }
}