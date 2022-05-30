<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RangeVAlidatorinJS.aspx.cs" Inherits="WebAppExample._06_ValidationControl.RangeVAlidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <script>
      function CheckLogin() {
        
          var varAge = parseInt(document.getElementById("txt_age").value);
          if (varAge < 1 || varAge > 150) {
              alert("올바른 나이를 입력해주세요");
              document.getElementById("txt_age").focus();
              return false;
          }
          return true;
      }
  </script>
    <title></title>
</head>
<body>
    <form id="form1" action="#" method="post" onsubmit="return CheckLogin();">
 
            나이 : <input id="txt_age" name="txt_age" value="0" />
            <input type="submit" value="체크" />
    
    </form>
</body>
</html>
