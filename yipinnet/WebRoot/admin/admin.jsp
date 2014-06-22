<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/css.css">

    <style type="text/css">
       .STYLE1 {
	     font-size: 11pt;
	     font-weight: bold;
       }
    </style>
    <script type="text/javascript">
   
  function changeimg()   
   
  {   
   
  var myimg = document.getElementById("myimg");   
   
  myimg.src="admin/yzm.jsp?"+Math.random();//随机生成一个数字，让图片缓冲区认为不是同一个缓冲区   
   
  }   
  
  function validate_request(field,alerttext){
     with(field)
        {
        if(value==null || value==""){
          alert(alerttext);return false
        }
        else{return true}
        }
  }
  function 	validate_form(thisform){
   with(thisform){
     if(validate_required(email,"还没有填写邮箱！")==false)
     {email.focus();return false}
   }
  
  } 
   
   
 </script>
  </head>
  
    <body style="background-image:url(images/admin_login_bg.gif); margin:0 auto; width:500px;">

<div style="background-image:url(images/admin_login.png); width:500px; height:200px; margin-top:130px;">
  <form action="UserServlet?flag=Login" method="post">
    <table width="500" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="250">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td height="40"><div align="right" class="STYLE1">用户名：</div></td>
        <td height="40" colspan="2"><input type="text" name="username" style="height:25px; width:200px; font-size:15pt; font-weight:bold;" /></td>
      </tr>
      <tr>
        <td height="40"><div align="right" class="STYLE1">密&nbsp; 码：</div></td>
        <td height="40" colspan="2"><input type="password" name="password" style="height:25px; width:200px; font-size:15pt; font-weight:bold;" /></td>
      </tr>
      <tr>
        <td height="40"><div align="right" class="STYLE1">验证码：</div></td>
        <td width="100" height="40"><input type="text" name="validate" style="height:25px; width:85px; font-size:15pt; font-weight:bold;" /></td>
        <td width="150"><img alt="验证码" src="admin/yzm.jsp" id="myimg">
          	
          	<a href="javascript:changeimg()">换一张</a>  
          
              <div align="center" style="color: red;">
                   ${error1}
              </div></td>
      </tr>
      <tr>
        <td height="40">&nbsp;</td>
        <td height="40" colspan="2"><input type="submit" name="Submit" value="" style="width:130px; height:30px; background-image:url(images/admin_login_button.png); border:0; background-color: transparent; cursor: pointer;"/></td>
      </tr>
    </table>
  </form>
</div>
  <div align="center" style="color: red;">
                   ${error}
              </div>
  </body>
</html>
