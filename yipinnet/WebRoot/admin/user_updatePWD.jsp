<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_updatePWD.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<script type="text/javascript">
	     function checkpwd(){
	        var newpwd = document.all.newpwd.value;
	        var repwd = document.all.repwd.value;
	        if(newpwd.length<1){
	             alert("密码不能为空");
	             return false;
	        }
	        else{
	           if(newpwd!=repwd){
	               alert("密码与确认密码不相符");
	               document.all.newpwd.value="";
	               document.all.repwd.value="";
	               document.all.newpwd.focus();
	               return false;
	           }else{
	              return true;
	           }
	        }
	        }
	</script>


  </head>
  
  <body>
     <br/><br/>
      <form action="UserServlet?flag=update_user_pwd" onsubmit="return checkpwd()" method="post">
      <table align="center" width="40%" border="1" cellpadding="0" cellspacing="0">
        
            <tr class="title">
               <td>
                                                      旧&nbsp;密&nbsp;码:
               </td>
               <td>
                    <input type="password" name="oldpwd"/>
               </td>
            </tr>
            <tr>
            <td>
                                                   新&nbsp;密&nbsp;码   
             </td>
               <td>
                  <input type="password" name="newpwd" id="newpwd"/>
               </td>
            </tr>
            <tr class="title">
                    <td>
                                                           确认新密码
                    </td>
                    <td>
                       <input type="password"  name="repwd" id="repwd"/>
                    </td>
            </tr>
            <tr>
               <td colspan="2" align="center">
               <input type="submit" value="确定">
                   <input type="reset" value="重置">
                
               </td>
            </tr>
        
      
      </table>
       </form>
      <div align="center">${success}</div>
  </body>
</html>
