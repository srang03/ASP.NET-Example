using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._02_ASP.NET_Object
{
    public partial class Request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string strUserId = "";
                string strPassword = String.Empty;
                string strName = "";
                string strAge = String.Empty;

                strUserId = Request.QueryString["input_id"];
                strPassword = Request.Params["input_pw"];
                strName = Request.Form["input_name"];
                strAge = Request["input_age"];

                string msg = $"아이디 : {strUserId}, 비밀번호 : {strPassword}, 이름 : {strName}, 나이 : {strAge}";
                Response.Write(msg);
            }

            lbl_01.Text = Request.UserHostAddress;
            lbl_02.Text = Request.ServerVariables["REMOTE_HOST"];
            lbl_03.Text = Request.ServerVariables["REMOTE_ADDR"];



        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {

        }
    }
}