using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppExample._02_ASP.NET_Object
{
    public partial class Response_Buffer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // [0] 현재 페이지를 매번 새로 읽어옴
            // 웹 브라우저의 캐시 내용을 Read
            Response.Expires = -1;

            // [1] 버퍼링 사용
            // 현재 페이지에서 버퍼링을 사용하겠다.
            // 버퍼링은 하나의 페이지를 끊어서 보여주는 기능 제공
            Response.Buffer = true;

            // [2] 화면 글쓰기
            // 버퍼 메모리 담기
            Response.Write("#1 보여짐<br/>");

            // [3] 현재 버퍼에 있는 내용 출력
            // 버퍼 내용 출력
            Response.Flush();

            // [4] 화면 글쓰기
            // 버퍼에 담기
            Response.Write("#2 안보임<br/>");

            // [5] 현재 버퍼 내용 비우기
            // 버퍼에 담은 내용 초기화
            Response.Clear();

            // [6] 문자열 출력
            // 버퍼에 담기
            Response.Write("#3 보여짐<br/>");

            // [7] 현재 페이지 종료
            // 버퍼 출력후 페이지 종료
            Response.End();

            Response.Write("#4 실행이 안됨<br/>");




        }
    }
}