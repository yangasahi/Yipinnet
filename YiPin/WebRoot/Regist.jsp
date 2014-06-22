<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Regist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/css.css">
	
    <script type="text/javascript">
   
  function changeimg()   
   
  {   
   
  var myimg = document.getElementById("myimg");   
   
  myimg.src="yzm.jsp?"+Math.random();//随机生成一个数字，让图片缓冲区认为不是同一个缓冲区   
   
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
  
  <body>
    <center>
    <h2>注&nbsp;册</h2>
    <hr>
    
    <form action="UserServlet?flag=save" method="post" onsubmit="return validate_form(this)">
       <div align="center">
        <div><input type="hidden" name="privileges" value="1"> </div>
        <div><input type="hidden" name="isface" value="2"> </div>
       <table>
      
       <tr>
          <td> 姓名:</td><td><input type="text" name="username"></td>
        </tr> 
         <tr>  
          <td>电子邮件:</td><td><input type="text" name="email"></td>
           </tr> 
           <tr>      
          <td>密码:</td><td><input type="password" name="password"></td>
           </tr>
           <tr>
           <td> 验证码：</td><td><input type="text" name="validate"></td>
          	<td><img alt="验证码" src="yzm.jsp" id="myimg">
          	
          	<a href="javascript:changeimg()">看不清，换一张</a>  

              <div align="center" style="color: red;">
                   ${error1}
              </div>
          	
          	</td>
          	
          </tr>
        </table>
           <input type="submit" value="提交">
       </div>
    </form>
    </center>
  </body>
</html>
