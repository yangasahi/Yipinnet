<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<frameset rows="15%,*" frameborder="1" border="0" framespacing="0">
		<frame src="admin/admin_top.jsp" name="topFrame" noresize="noresize"
			id="topFrame" title="topFrame" scrolling="no" />
		<frameset cols="15%,*" frameborder="1" border="0" framespacing="0">
			<frame src="admin/admin_left.jsp" name="leftFrame" noresize="noresize"
				id="leftFrame" title="leftFrame" scrolling="no" />
		    <frame src="admin/admin_right.html" name="mainFrame" id="mainFrame" title="mainFrame"/>
		</frameset>
	</frameset>


	<noframes>
		<body>
		</body>
	</noframes>
</html>
