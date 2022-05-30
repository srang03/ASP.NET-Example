using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._05_RichControl
{
    public partial class Wizard_Control : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void wzd_form_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            string str = "";
            str += TextBox0.Text + "<br/>"; 
            str += TextBox1.Text + "<br/>";
            str += TextBox2.Text + "<br/>";
            str += TextBox3.Text + "<br/>";
            lbl_result.Text = str;

            Response.Write(TextBox0.Text);
            Response.Write(TextBox1.Text);
            Response.Write(TextBox2.Text);
            Response.Write(TextBox3.Text);
            

        }
    }
}