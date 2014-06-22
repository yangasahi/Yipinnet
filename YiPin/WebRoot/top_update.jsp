<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.yipin.model.Top"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top_update.jsp' starting page</title>
    
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
			Top top = (Top) request.getAttribute("top");
		%>
		<form action="YipinServlet?flag=update" method="post">
			<input type="hidden" name="goodsid" value="<%=top.getGoodsid() %>">
			商品名称:
			<input type="text" name="goodsname" value="<%=top.getGoodsname()%>">
			<br>
			商品描述：
			<input type="text" name="introduce" value="<%=top.getIntroduce()%>">
			<br>
			图片地址：
			<input type="text" name="image" value="<%=top.getImage()%>">
			<br>
			商品地址
			<input type="text" name="addr" value="<%=top.getAddr()%>">
			<br>
			最新价格：
			<input type="text" name="price" value="<%=top.getPrice()%>">
			<br>
			<input type="hidden" name="time" value="<%=top.getTime()%>">

			<input type="hidden" name="goodstypeid" value="<%=top.getGoodstypeid()%>">
			<input type="submit" value="submit">
		</form>
  </body>
</html>
