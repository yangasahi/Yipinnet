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

		<title>My JSP 'user_login.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
.regist td, .regist div {
	font-size: 12px;
	Color: #5A5A5A;
	font-family: Arial, Helvetica;
}
</style>

	</head>

	<body>
		<jsp:include page="head.jsp"></jsp:include>
		<div class="regist">
		<div align="center">

			<form name="form1" method="post"
				action="UserServlet?flag=user_log" id="form1">
				<div>
					<input type="hidden" name="privileges" 
						value="0">
				</div>

				<div>

					<input type="hidden" name="__EVENTVALIDATION"
						id="__EVENTVALIDATION"
						value="/wEWBQKA6aDLDQLB2tiHDgLKw6LdBQKWuuO2AgKC3IeGDKD4k2qxJBcdfjvEQ/IwkX15JQhv">
				</div>

				<div style="width: 982px; border: solid 1px #ccc; margin-top: 12px;">
					<div
						style="background-image: url(http://misc.manmanbuy.com/images/serch_bg.gif); text-align: left; padding: 6px 10px;">
						<font style="font-weight: bold; color: #666666; font-size: 14px;">

							用户登陆</font>
					</div>

					<table align="center" width="800">
						<tbody>
							<tr>
								<td>
									<div style="margin: 36px 10px 0px 10px;">
										<table cellspacing="5" width="400">

											<tbody>
												<tr style="height: 30px;">
													<td style="font-size: 14px;">
														用户名：
													</td>
													<td style="text-align: left;">
														<input name="username" type="text" id="txtUser"
															style="width: 200px;">
													</td>
												</tr>
												<tr style="height: 30px;">
													<td style="font-size: 14px;">
														密&nbsp;码：
													</td>
													<td style="text-align: left;">
														<input name="password" type="password" id="txtPass"
															style="width: 200px;">
														<!-- <a href="http://bbs.manmanbuy.com/sendpwd.php"
															target="_blank">找回密码</a> -->
													</td>
												</tr>
												<tr style="height: 30px;">
													<td style="font-size: 14px;"></td>
													<td style="text-align: left;">
														<input id="autoLogin" type="checkbox" name="autoLogin"
															checked="checked">
														一个月内自动登陆
													</td>
												</tr>
												<tr style="height: 30px;">
													<td></td>
													<td style="text-align: left;">
														<input type="submit" name="btnLogin" value="登录"
															id="btnLogin" style="height: 27px; width: 69px;">
														 <div align="center" style="color: red;">
                   ${error}
              </div>
                                                          
													</td>
												</tr>
											</tbody>
										</table>
									</div>


								</td>
								<td>
									<div
										style="border-left: 1px solid #ddd; height: 195px; margin: 16px 0px 8px 0px;"></div>
								</td>
								<td valign="top">

									<div
										style="font-weight: bold; margin-top: 60px; padding: 5px; margin-left: 20px; text-align: center;">
										5秒注册
									</div>
									<div
										style="padding: 5px; line-height: 20px; text-align: center; margin-left: 20px; color: #777;">
										本站支持京东、国美、苏宁、卓越网、库巴、新蛋等12家商城的返利
										<a href="http://bbs.manmanbuy.com/read.php?tid=199"
											class="f12sc">详细&gt;&gt;</a>
									</div>
									<div
										style="padding: 5px; margin-left: 20px; text-align: center;">
										<a href="UserServlet?flag=user_regist" target="_blank"><img
												src="images/zc.jpg" style="border: 0px;"
												alt="注册新用户"> </a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>



					<div style="margin-top: 50px;">
						<hr class="hrxu" size="1">
					</div>
					</div>
			</form>

		</div>
		</div>
	</body>
</html>
