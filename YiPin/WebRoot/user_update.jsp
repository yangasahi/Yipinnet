<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.yipin.model.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
			User user = (User) request.getAttribute("user");
		%>
		<form action="UserServlet?flag=update" method="post">
			<input type="hidden" name="id" value="<%=user.getUserid() %>">
			用户名:
			<input type="text" name="username" value="<%=user.getUsername()%>">
			<br>
			密码:
			<input type="text" name="password" value="<%=user.getPassword()%>">
			<br>
			电子邮件
			<input type="text" name="email" value="<%=user.getEmail()%>">
			<br>
			权限
			<input type="text" name="privileges" value="<%=user.getPrivileges()%>">
			
			<input type="submit" value="submit">
		</form>
  </body>
</html>
