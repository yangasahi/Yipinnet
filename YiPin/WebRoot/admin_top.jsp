<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>仪品网后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/css.css">

  </head>
  
  <body background="images/left_bg.gif">
    <div align="center" class="style2">
      <h2>欢迎使用仪品网后台管理系统</h2>
    </div>
    
    <div align="right" class="style2">
      <img src="images/persons_icon.gif" width="15" height="15"/>
     欢迎你:${username }
      <img src="images/time.gif"/>
     今天是:
      <script type="text/javascript">
           var times=new Date();
           var weekes=["日","一","二","三","四","五","六"];
           document.write(times.getYear() + "年" + (times.getMonth()+1) + "月" + times.getDate() + "日&nbsp;星期" + weekes[times.getDay()]);  
        </script>
    </div>
  </body>
</html>
