using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DapperDBProject
{
    public partial class DeleteModel : System.Web.UI.Page
    {
        private string query_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.div_deletebox.Visible = false;
            this.div_resultbox.Visible = true;
        

                if (String.IsNullOrEmpty(Request["id"]))
                {

                }
                else
                {
                    query_id = Request["id"];
                    if (int.TryParse(query_id, out int id))
                    {
                        this.hpl_back.NavigateUrl = $"ViewModel.aspx?id={id}";
                        this.div_deletebox.Visible = true;
                    }
                }
                    
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
         
            if (int.TryParse(query_id, out int id))
            {
                Delete_Model(id);
         
            }
         
        }

        protected void Show_Message(string msg)
        {
            this.lbl_message.Text = msg;
        }

        protected void Delete_Model(int id)
        {
            ModelServiceDapper service = new ModelServiceDapper();
            var result = service.DeleteModel(id);
            string message = String.Empty;
            
            if (result)
            {
                message = "정상적으로 삭제되었습니다.";
                
            }
            else
            {
                message = "비정상";
            }
         
            Show_Message(message);
            this.div_deletebox.Visible = false;
            this.div_resultbox.Visible = true;
        }
    }
}