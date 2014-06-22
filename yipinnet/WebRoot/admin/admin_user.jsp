<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.yipinnet.model.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>仪品网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/css.css">

     <script type="text/javascript">
            function doDelCheck(){
               if(confirm('确定要删除吗？')){
                    fom1.submit();
               }else{
                 return false;
               }
            }
     </script>
  </head>
  
  <body>
  
  
    <table align="center" width="70%" border="1" cellpadding="2" cellspacing="0">
		           <tr class="title">
		                
		                <th>
		                                                用户ID
		                </th>
		                <th>
		                                                用户名
		                </th>
		                <th>
		                                                 密码
		                </th>
		                <th>
		                                                 电子邮件
		                </th>
		                <th>
		                                                 用户权限
		                </th>
		                <th>操作指令</th>
		                
		           </tr>
		           
		                 <%
	  		                List<User> list=(List)request.getAttribute("list");        
	  		                for(User user : list){
	  		             %>
		                  <tr>
		                     <td>
		                        <%=user.getUserid() %>

		                     </td>
		                     <td>
		                         <%=user.getUsername() %>
		                     </td>
		                      <td>
		                         <%=user.getPassword() %>
		                     </td>
		                      <td>
		                         <%=user.getEmail() %>
		                     </td>
		                      <td>
		                         <%=user.getPriviledge() %>
		                     </td>
		                     
		                     
		                     <td>
		                      <div align="center"> 
		                           <a href="UserServlet?flag=del&id=<%=user.getUserid() %>"
		                                  onclick="if (confirm('确定要删除吗？'))return true;else return false;">删除</a>
		                           <a href="UserServlet?flag=preupdate&id=<%=user.getUserid() %>">修改</a>
		                         </div>
		                   
		                     </td>
		                  </tr>
		             <%
	 	      }
	            %> 
		     </table>
  </body>
</html>
