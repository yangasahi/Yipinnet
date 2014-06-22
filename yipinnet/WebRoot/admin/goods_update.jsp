<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.yipinnet.model.TopItem"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goods_update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/css.css">
	

  </head>
  
  <body>
     <%
			TopItem topItem = (TopItem) request.getAttribute("goods");
		%>
		<form action="GoodsServlet?flag=update" method="post">
			<input type="hidden" name="goodsid" value="<%=topItem.getGoodsid() %>">
			商品名称:
			<input type="text" name="goodsname" value="<%=topItem.getGoodsname()%>">
			<br>
			商品描述：
			<input type="text" name="introduce" value="<%=topItem.getIntroduce()%>">
			<br>
			图片地址：
			<input type="text" name="image" value="<%=topItem.getImage()%>">
			<br>
			商品地址：
			<input type="text" name="addr" value="<%=topItem.getAddr()%>">
			<br/>
			是否Top100：
			<input type="text" name="istop" value="<%=topItem.getIstop()%>">
			<br/>
			商品类型：
			<input type="text" name="goodstypename" value="<%=topItem.getGoodstypename()%>">
			<br/>
			<input type="submit" value="submit">
		</form>
  </body>
</html>
