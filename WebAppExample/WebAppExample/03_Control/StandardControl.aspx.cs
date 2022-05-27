using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._03_Control
{
    public partial class StandardControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnInput2.Value = "버튼 HTML 서버 컨트롤";
            btnInput3.Text = "표준 웹 서버 컨트롤";

            lbl_dateTime.Text = DateTime.Now.ToString();

            string id = txt_id.Text;
            string description = txt_description.Text;
            string password = txt_pw.Text;

            Response.Write($"{id}, {password}, {description}");
            if (!IsPostBack)
            {
                txt_inputNumber.Text = "0";
            }

                
        }

        protected void btn_increaseNumber_Click(object sender, EventArgs e)
        {
            int num = int.Parse(txt_inputNumber.Text) + 1;
            chanageNumber(num);
        }

        protected void btn_decreaseNumber_Click(object sender, EventArgs e)
        {
            int num = int.Parse(txt_inputNumber.Text) - 1;
            chanageNumber(num);
        }

        protected void chanageNumber(int num)
        {
            txt_inputNumber.Text = num.ToString();
        }
    }
}