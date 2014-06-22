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

		<title>header</title>
		<link rel="stylesheet" type="text/css"
			href="bootstrap/css/bootstrap.css" />


		<script type="text/javascript">

function clearDefaultText(el, message) {
	var obj = el;
	if (typeof (el) == "string")
		obj = document.getElementById(id);
	if (obj.value == message) {
		obj.value = "";
	}
	obj.onblur = function() {
		if (obj.value == "") {
			obj.value = message;
		}
	}
}
</script>
	</head>

	<body>










		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<form class="navbar-search pull-right" action="YipinServlet?flag=topsearch">
					<input type="text" class="search-query" name="search_content" placeholder="搜索">
				</form>
				<div class="container">
					<button type="button" class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<a class="brand" href="/"
						style="padding-top: 0px; padding-bottom: 0px;"><img
							src="images/logo.png" title="仪品网"
							style="width: 100px; height: 40px;">
					</a>
					<div class="nav-collapse">
						<ul class="nav">

							<li>
								<a href="YipinServlet?flag=top">Top100</a>
							</li>
							<li>
								<a href="YipinServlet?flag=Books">书籍</a>
							</li>
							<li>
								<a href="YipinServlet?flag=Software">软件</a>
							</li>
							<li>
								<a href="YipinServlet?flag=Sporting">运动</a>
							</li>
							<li>
								<a href="YipinServlet?flag=Toys">玩具</a>
							</li>


							<%
								String username = (String) request.getSession().getAttribute(
										"username");
								if (username == null) {
							%>
							<li>


								<a href="UserServlet?flag=user_regist"
									style="padding-top: 0px; padding-bottom: 0px;"><button
										class="btn btn-primary">
										<i class="icon-user icon-white"></i> &nbsp;注&nbsp;册&nbsp;
									</button> </a>
							</li>
							<li>
								<a href="UserServlet?flag=user_login"
									style="padding-top: 0px; padding-bottom: 0px;"><button
										class="btn info">
										<i class="icon-heart"></i> &nbsp;登&nbsp;录&nbsp;
									</button> </a>
							</li>
							<%
								} else {
							%>

							<li>
								<span class="label label-info" style="margin-top: 10px;">欢迎您：<%=username%></span>
							</li>
							<li>
								<a href="UserServlet?flag=user_logout" style="padding-top: 0px;padding-bottom: 0px;"><button
										class="btn btn-danger">
										&nbsp;退&nbsp;出&nbsp;
									</button> </a>
							</li>
							<%
								}
							%>




						</ul>


					</div>
					<!-- /.nav-collapse -->
				</div>
			</div>
			<!-- /navbar-inner -->
		</div>


	</body>
</html>
