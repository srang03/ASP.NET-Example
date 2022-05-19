using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebAppExample._02_ASP.NET_Object
{
    public partial class Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Title = "제목 변경";
            Page.Title = "제목 변경2";
            Page.Header.Title = "제목 변경3";


            // 외부 스타일 정의
            HtmlLink htmlLink = new HtmlLink();
            htmlLink.Href = "DevASPNET.css";
            htmlLink.Attributes.Add("rel", "stylesheet");
            htmlLink.Attributes.Add("type", "text/css");

            // 외부 스타일 등록
            HtmlHead htmlHead = Page.Header;
            htmlHead.Controls.Add(htmlLink);
            if (!IsPostBack)
            {
                Response.Write("<h3>[1] 폼이 처음으로 로드될 때 실행</h3>");
            }

            Response.Write("<h3>[2] 폼 로드시 실행</h3>");
        }

        protected void btn_PostBack_Click(object sender, EventArgs e)
        {
            string strJs = @"
                <script>
                    window.alert('포스트백');
                </script>
            ";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", strJs);
        }

        protected void btn_NewLoad_Click(object sender, EventArgs e)
        {
            Response.Redirect("Page.aspx");
        }
    }
}