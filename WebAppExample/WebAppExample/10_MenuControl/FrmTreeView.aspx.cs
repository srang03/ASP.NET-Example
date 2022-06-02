using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._10_MenuControl
{
    public partial class FrmTreeView : System.Web.UI.Page
    {
        private static TreeNode target = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                target = trv_main.FindNode("Home");
            }

            Response.Write(target.Text);
        }

        protected void trv_main_SelectedNodeChanged(object sender, EventArgs e)
        {
            target = trv_main.SelectedNode;
        }

        protected void btn_addNode_Click(object sender, EventArgs e)
        {
            TreeNode tr =new TreeNode();
            tr.Text = "테스트 01";
            tr.Value = "Test";  
            target.ChildNodes.Add(tr);
            
        }

    }
}