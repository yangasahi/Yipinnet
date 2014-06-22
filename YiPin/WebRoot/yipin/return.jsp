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

		<title>My JSP 'return.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/style_bijia.css">
		<link rel="stylesheet" type="text/css" href="css/wgyhstyle.css">
		<link rel="stylesheet" type="text/css" href="css/menuleft.css">

		<link rel="stylesheet" type="text/css" href="css/styles.css">


	</head>

	<body>
	<jsp:include page="head.jsp"></jsp:include>
		<div align="center">

			<div class="clear"></div>


			<div style="width: 980px; text-align: center; margin-top: 7px;">

				<div
					style="border: 1px solid #F0CC88; background-color: #FFF8DD; padding: 10px;">

					<img src="images/LoginError.png" >
					<b style="color: #5A5A5A">您还没有登陆，跳转购买将无法获得返利，</b>
					<a
						href="http://home.manmanbuy.com/login.aspx?tourl=http://home.manmanbuy.com/shop.aspx"
						class="f12sc"><b style="color: #EE5A00">请先登录</b></a><b style="color: #5A5A5A">。 如果您还不是仪品网的用户，请</b>
					<a href="http://home.manmanbuy.com/reg.aspx" class="f12sc"><b style="color: #EE5A00">注册新用户</b></a>。


				</div>

				<div
					style="width: 978px; float: left; border: solid 1px #cccccc; margin-top: 13px;">
					<div class="tgdi">
						<div style="float: left; text-align: left; width: 360px;">

							<font style="font-size: 14px;">登陆后去以下合作商城购物，可以拿返利</font>


						</div>
						
					</div>
					<div class="clear">
					</div>
					<div
						style="text-align: left; padding-left: 10px; border-bottom: 1px solid #eee; padding-bottom: 10px;">
						<form method="get"
							action="./返利网站大全——慢慢买返利_files/返利网站大全——慢慢买返利.htm">
							<b style="color: #5A5A5A">搜索商城：</b>
							<input type="text" name="txtsite" size="20">
							<input id="btnSearch" type="submit" value="搜索">
						</form>
					</div>
					<div
						style="margin-bottom: 10px; margin-left: 20px; margin-top: 10px;">

						<table cellpadding="4" cellspacing="0"
							style="font-size: 12px;background-color: #fff" width="100%">
							<tbody>
								<tr height="70">
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank"><img
														src="images/joyologo.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank" style="font-size: 14px;">亚马逊</a>
												<br>
												<font color="#999999">Tel：400-810-5666</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_4.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank"><img
														src="images/coo8_1.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank" style="font-size: 14px;">库巴</a>
												<br>
												<font color="#999999">Tel：400-888-0909</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_7.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank"><img
														src="images/suningnew.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank" style="font-size: 14px;">苏宁易购</a>
												<br>
												<font color="#999999">Tel：400-836-5365</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_6.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
								</tr>
								
								<tr height="70">
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank"><img
														src="images/joyologo.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank" style="font-size: 14px;">亚马逊</a>
												<br>
												<font color="#999999">Tel：400-810-5666</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_4.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank"><img
														src="images/coo8_1.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank" style="font-size: 14px;">库巴</a>
												<br>
												<font color="#999999">Tel：400-888-0909</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_7.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank"><img
														src="images/suningnew.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank" style="font-size: 14px;">苏宁易购</a>
												<br>
												<font color="#999999">Tel：400-836-5365</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_6.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
								</tr>
								
								<tr height="70">
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank"><img
														src="images/joyologo.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank" style="font-size: 14px;">亚马逊</a>
												<br>
												<font color="#999999">Tel：400-810-5666</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_4.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank"><img
														src="images/coo8_1.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank" style="font-size: 14px;">库巴</a>
												<br>
												<font color="#999999">Tel：400-888-0909</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_7.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank"><img
														src="images/suningnew.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank" style="font-size: 14px;">苏宁易购</a>
												<br>
												<font color="#999999">Tel：400-836-5365</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_6.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
								</tr>
								<tr height="70">
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank"><img
														src="images/joyologo.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank" style="font-size: 14px;">亚马逊</a>
												<br>
												<font color="#999999">Tel：400-810-5666</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_4.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank"><img
														src="images/coo8_1.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank" style="font-size: 14px;">库巴</a>
												<br>
												<font color="#999999">Tel：400-888-0909</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_7.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank"><img
														src="images/suningnew.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank" style="font-size: 14px;">苏宁易购</a>
												<br>
												<font color="#999999">Tel：400-836-5365</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_6.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
								</tr>
								<tr height="70">
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank"><img
														src="images/joyologo.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=4"
													target="_blank" style="font-size: 14px;">亚马逊</a>
												<br>
												<font color="#999999">Tel：400-810-5666</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_4.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank"><img
														src="images/coo8_1.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=7"
													target="_blank" style="font-size: 14px;">库巴</a>
												<br>
												<font color="#999999">Tel：400-888-0909</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_7.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="background-color: #fff">
										<div>
											<div style="float: left; width: 140px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank"><img
														src="images/suningnew.jpg"
														style="border: 1px solid #ccc; margin-bottom: 3px;">
												</a>
											</div>
											<div
												style="float: left : width : 200px; text-align: left; line-height: 21px;">
												<a
													href="http://www.manmanbuy.com/redirectUrl.aspx?spid=0&webid=6"
													target="_blank" style="font-size: 14px;">苏宁易购</a>
												<br>
												<font color="#999999">Tel：400-836-5365</font>
												<br>
												<a href="http://home.manmanbuy.com/sfl_6.aspx"
													target="_blank" style="color: #999999;">返利标准、最新降价</a>
											</div>
										</div>
										<div class="clear"></div>
									</td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="clear"></div>

		</div>
    <div class="kongbai"></div>


<div id="youlink" class="widthin widthjuzhong">
		<ul >
        	<li><b>友情链接:</b></li>
            <li><a href="http://www.misscp.net">迷失潮铺</a></li>
             <li><a href="http://www.mianfeimoban.com">免费模板</a></li>
              <li><a href="http://xiuyixia.com">祛痘产品排行榜</a></li>
               <li><a href="http://xiuyixia.com">友情链接申请:1825908632</a></li>
        </ul>

</div>


<div class="widthjuzhong widthin">
<div class="kongbai"></div>
    <div class="footer">
    	<ul class="footmenu"><li><a href="">关于本站</a></li> | <li><a href="">联系我们</a></li> | <li><a href="">新手指引</a></li> | <li><a href="">客服中心</a></li> | <li><a href="">友情链接</a></li> | <li><a href="">新品发布</a></li> | <li><a href="">免责申明</a></li></ul>
        
       
   
    
    </div>

</div>
    
		
		

	</body>
</html>
