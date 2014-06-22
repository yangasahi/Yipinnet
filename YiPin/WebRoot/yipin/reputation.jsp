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

		<title>My JSP 'reputation.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
.reputation table {
	font-size: 12px;
}

.reputation .divsmallclass {
	padding: 0px 10px 0px 18px;
	margin-bottom: 8px;
}

.reputation .divbigclass {
	padding: 5px 6px 0px 6px;
	height: 18px;
	font-size: 12px;
	font-weight: bold;
	color: #666;
	margin-top: 6px;
}

.reputation .listCommentDisFs5 {
	line-height: 20px;
	text-align: left;
	background-image: url(images/pf5.gif);
	padding-left: 75px;
	background-repeat: no-repeat;
}

.reputation td,.reputation div {
	font-size: 12px;
	Color: #5A5A5A;
	font-family: Arial, Helvetica;
}

.reputation .listCommentLeft {
	float: left;
	width: 120px;
}

.reputation .listCommentLeftPic {
	width: 120px;
	text-align: center;
}

.reputation .listCommentPrice {
	text-align: center;
	margin-top: 6px;
	line-height: 18px;
}

.reputation .listCommentPrice {
	text-align: center;
	line-height: 18px;
}

.reputation .listCommentLeft2 {
	float: left;
	overflow: hidden;
}

.reputation .listCommentDisTitle {
	padding-left: 2px;
	line-height: 20px;
}

.reputation a.f14sc:link,a.f14sc:active,a.f14sc:visited {
	font-size: 14px;
	TEXT-DECORATION: none;
	color: #005AA0;
	font-weight: bold;
}

.reputation .listCommentDisFs5 {
	line-height: 20px;
	text-align: left;
	background-image: url(http://misc.manmanbuy.com/images/pf5.gif);
	padding-left: 75px;
	background-repeat: no-repeat;
}

.reputation .listCommentDisUser {
	color: #52992E;
}

.reputation a.f12sc:link,a.f12sc:active,a.f12sc:visited {
	font-size: 12px;
	TEXT-DECORATION: none;
	color: #005AA0;
}

.reputation .listCommentDisContent {
	padding-left: 2px;
	line-height: 20px;
	margin-bottom: 6px;
}

.reputation .listCommentHuifuButton {
	background-image: url(http://misc.manmanbuy.com/images/hfdi.png);
	width: 60px;
	height: 22px;
	text-align: center;
}

.reputation a:link,a:active,a:visited {
	TEXT-DECORATION: none;
	Color: #5A5A5A;
	font-family: Arial, Helvetica;
}

.reputation .clear {
	clear: both;
}

.reputation .hrxu {
	border-top: 1px dashed #999;
}

.reputation .listCommentLeft {
	float: left;
	width: 120px;
}
</style>

	</head>

	<body>
		<jsp:include page="head.jsp"></jsp:include>
		<div class="reputation">
			<div align="center">





				<form name="aspnetForm" method="post"
					action="./家电口碑大全，看看什么牌子的家电好——慢慢买_files/家电口碑大全，看看什么牌子的家电好——慢慢买.htm"
					id="aspnetForm">





					<div style="width: 994px; text-align: center; margin-top: 3px;">


						<!--
主体开始
 -->
						<div style="width: 800px; float: right;">

							<div style="width: 800px; border: solid 1px #E6CA98;">
								<div
									style="height: 24px; padding-left: 10px; text-align: left; padding-top: 6px;">
									<div
										style="float: left; width: 320px; font-weight: bold; font-size: 14px; color: #DF4100;">
										看看大家心中的好产品
									</div>

								</div>
								<div
									style="padding: 5px 10px 6px 10px; line-height: 20px; border-bottom: 1px solid #f6eAb8; margin: 0px 6px;">

									<a href="http://www.manmanbuy.com/comment__0_1.aspx">全部评论</a>
									&nbsp;
									<a href="http://www.manmanbuy.com/comment_0_5_1.aspx"><img
											src="images/pf5.gif" alt="强烈推荐" border="0">强烈推荐</a> &nbsp;
									<a href="http://www.manmanbuy.com/comment_0_4_1.aspx"><img
											src="images/pf4.gif" alt="推荐购买" border="0">推荐购买</a> &nbsp;
									<a href="http://www.manmanbuy.com/comment_0_3_1.aspx"><img
											src="images/pf3.gif" alt="一般吧" border="0">一般吧</a> &nbsp;
									<a href="http://www.manmanbuy.com/comment_0_2_1.aspx"><img
											src="images/pf2.gif" alt="不推荐" border="0">不推荐</a> &nbsp;
									<a href="http://www.manmanbuy.com/comment_0_1_1.aspx"><img
											src="images/pf1.gif" alt="千万不要买" border="0">千万不要买</a>

								</div>
								<div id="Div2"
									style="text-align: left; padding: 6px; width: 780px;"
									class="team_main_side">

									<div id="ctl00_ContentPlaceHolder1_listcomment">
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_24435.aspx"><img
															src="images/Thumb_2011110014314396443.jpg" width="80"
															alt="摩托罗拉（Motorola）XT910 3G手机（黑色）WCDMA/GSM" border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥1998</font><a
														href="http://www.manmanbuy.com/pb_24435.aspx">(7个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_24435.aspx">共231条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_24435.aspx"
														class="f14sc" style="font-weight: normal;">摩托罗拉（Motorola）XT910
														3G手机（黑色）WCDMA/GSM</a>
												</div>
												<div class="listCommentDisFs5">
													强烈推荐 &nbsp;
													<font class="listCommentDisUser">当刹那变</font> 于 2012-12-3
													发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_6_0_0_1.aspx"
														target="_blank" style="color: #52992E">苏宁</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_57_130_1.aspx"
														title="摩托罗拉家电怎么样？" class="f12sc">摩托罗拉家电</a>
												</div>
												<div class="listCommentDisContent">
													苏宁的送货速度还不错，很快，满意。
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_24435_503040.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_24435.aspx"><img
															src="images/Thumb_2011110014314396443.jpg" width="80"
															alt="摩托罗拉（Motorola）XT910 3G手机（黑色）WCDMA/GSM" border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥1998</font><a
														href="http://www.manmanbuy.com/pb_24435.aspx">(7个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_24435.aspx">共231条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_24435.aspx"
														class="f14sc" style="font-weight: normal;">摩托罗拉（Motorola）XT910
														3G手机（黑色）WCDMA/GSM</a>
												</div>
												<div class="listCommentDisFs5">
													强烈推荐 &nbsp;
													<font class="listCommentDisUser">凌乱谁的侧脸</font> 于 2012-12-3
													发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_6_0_0_1.aspx"
														target="_blank" style="color: #52992E">苏宁</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_57_130_1.aspx"
														title="摩托罗拉家电怎么样？" class="f12sc">摩托罗拉家电</a>
												</div>
												<div class="listCommentDisContent">
													手机超薄，拿在手里很大气
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_24435_503042.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_24435.aspx"><img
															src="images/Thumb_2011110014314396443.jpg" width="80"
															alt="摩托罗拉（Motorola）XT910 3G手机（黑色）WCDMA/GSM" border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥1998</font><a
														href="http://www.manmanbuy.com/pb_24435.aspx">(7个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_24435.aspx">共231条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_24435.aspx"
														class="f14sc" style="font-weight: normal;">摩托罗拉（Motorola）XT910
														3G手机（黑色）WCDMA/GSM</a>
												</div>
												<div class="listCommentDisFs5">
													强烈推荐 &nbsp;
													<font class="listCommentDisUser">们的爱变得</font> 于 2012-12-3
													发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_6_0_0_1.aspx"
														target="_blank" style="color: #52992E">苏宁</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_57_130_1.aspx"
														title="摩托罗拉家电怎么样？" class="f12sc">摩托罗拉家电</a>
												</div>
												<div class="listCommentDisContent">
													货到付款的，很放心，手机还不错。
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_24435_503044.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_50325.aspx"><img
															src="images/Thumb_2012020013051840617.jpg" width="80"
															alt="TCL彩电L48F3390A-3D" border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥4899</font><a
														href="http://www.manmanbuy.com/pb_50325.aspx">(7个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_50325.aspx">共51条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_50325.aspx"
														class="f14sc" style="font-weight: normal;">TCL彩电L48F3390A-3D</a>
												</div>
												<div class="listCommentDisFs4">
													推荐 &nbsp;
													<font class="listCommentDisUser">tx1486</font> 于 2012-12-2
													发布的评价 &nbsp; &nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_4_8_1.aspx"
														title="TCL家电怎么样？" class="f12sc">TCL家电</a>
												</div>
												<div class="listCommentDisContent">
													此型号是不是云电视？谢谢您回复。
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_50325_1289456.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_19004.aspx"><img
															src="imagea/Thumb_2011100010231885508.jpg" width="80"
															alt="TCL55英寸3D电视L55V8200-3D " border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥14999</font><a
														href="http://www.manmanbuy.com/pb_19004.aspx">(0个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_19004.aspx">共4条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_19004.aspx"
														class="f14sc" style="font-weight: normal;">TCL55英寸3D电视L55V8200-3D
													</a>
												</div>
												<div class="listCommentDisFs5">
													强烈推荐 &nbsp;
													<font class="listCommentDisUser">ebC***</font> 于 2012-12-2
													发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_13_0_0_1.aspx"
														target="_blank" style="color: #52992E">1号店</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_4_8_1.aspx"
														title="TCL家电怎么样？" class="f12sc">TCL家电</a>
												</div>
												<div class="listCommentDisContent">
													很喜欢
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_19004_898793.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_13076.aspx"><img
															src="images/Thumb_2011040010543089660.jpg" width="80"
															alt="清华同方（THTF） LE-55TX2800 55寸 3D LED电视 " border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥11997</font><a
														href="http://www.manmanbuy.com/pb_13076.aspx">(0个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_13076.aspx">共3条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_13076.aspx"
														class="f14sc" style="font-weight: normal;">清华同方（THTF）
														LE-55TX2800 55寸 3D LED电视 </a>
												</div>
												<div class="listCommentDisFs5">
													强烈推荐 &nbsp;
													<font class="listCommentDisUser">AAr***</font> 于 2012-12-2
													发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_13_0_0_1.aspx"
														target="_blank" style="color: #52992E">1号店</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_4_217_1.aspx"
														title="其他家电怎么样？" class="f12sc">其他家电</a>
												</div>
												<div class="listCommentDisContent">
													很喜欢
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_13076_898767.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_117294.aspx"><img
															src="images/Thumb_2012100015493329074.jpg" width="80"
															alt="华为手机C8812e（白色）" border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥809</font><a
														href="http://www.manmanbuy.com/pb_117294.aspx">(2个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_117294.aspx">共19条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_117294.aspx"
														class="f14sc" style="font-weight: normal;">华为手机C8812e（白色）</a>
												</div>
												<div class="listCommentDisFs5">
													强烈推荐 &nbsp;
													<font class="listCommentDisUser">lzp15572</font> 于
													2012-12-1 发布的评价
													<font class="listCommentDisUser">购买自【新蛋】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_57_161_1.aspx"
														title="华为家电怎么样？" class="f12sc">华为家电</a>
												</div>
												<div class="listCommentDisContent">
													白色的挺漂亮的，手感不错，显示细腻，性价比高，无法ROOT刷机。
												</div>
												<div class="listCommentHuifuButton">
													<a
														href="http://www.manmanbuy.com/propj_117294_1289455.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_4890.aspx"><img
															src="images/Thumb_2011040015371077146.jpg" width="80"
															alt="哥尔 超声波 超静音 加湿器 GO-2028" border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥85</font><a
														href="http://www.manmanbuy.com/pb_4890.aspx">(4个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_4890.aspx">共222条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_4890.aspx"
														class="f14sc" style="font-weight: normal;">哥尔 超声波 超静音
														加湿器 GO-2028</a>
												</div>
												<div class="listCommentDisFs4">
													推荐 &nbsp;
													<font class="listCommentDisUser">某**月</font> 于 2012-12-1
													发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_10_0_0_1.aspx"
														target="_blank" style="color: #52992E">淘宝天猫</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_23_192_1.aspx"
														title="哥尔家电怎么样？" class="f12sc">哥尔家电</a>
												</div>
												<div class="listCommentDisContent">
													买来一看，和介绍的一样~~~小巧玲珑的···还没有使用，希望效果也和说明书上的一样~~
													<a href="http://www.manmanbuy.com/propj_4890_1289417.aspx"
														class="f12sc" title="某**月对哥尔 超声波 超静音 加湿器 GO-2028的评论">详细内容&gt;</a>
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_4890_1289417.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_5915.aspx"><img
															src="images/Thumb_2011010014204851837.jpg" width="80"
															alt="飞科（FLYCO）浮动旋转式剃须刀-FS812" border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥25</font><a
														href="http://www.manmanbuy.com/pb_5915.aspx">(5个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_5915.aspx">共77条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_5915.aspx"
														class="f14sc" style="font-weight: normal;">飞科（FLYCO）浮动旋转式剃须刀-FS812</a>
												</div>
												<div class="listCommentDisFs5">
													强烈推荐 &nbsp;
													<font class="listCommentDisUser">Lo***6B</font> 于 2012-12-1
													发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_11_0_0_1.aspx"
														target="_blank" style="color: #52992E">易迅网</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_29_55_1.aspx"
														title="飞科家电怎么样？" class="f12sc">飞科家电</a>
												</div>
												<div class="listCommentDisContent">
													买来送给老爸的，老爸辛苦一辈子了也舍不得买个电动剃须刀来使使，这次在易迅看到了，价格也不贵就买了，准备给老爸一个惊喜，就商品本身而言还是感到很不错的，唯一不好的就是物流，太坑爹了，一个多星期了才到，到了竟也不通知一声，把东西放了就走，我当时真是无语啊，所以我也晚一个多星期评价，哼。。。
													<a href="http://www.manmanbuy.com/propj_5915_1289440.aspx"
														class="f12sc" title="Lo***6B对飞科（FLYCO）浮动旋转式剃须刀-FS812的评论">详细内容&gt;</a>
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_5915_1289440.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_1734.aspx"><img
															src="images/Thumb_201008001039143135.jpg" width="80"
															alt="飞利浦（philips）电动剃须刀 HQ916" border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥215</font><a
														href="http://www.manmanbuy.com/pb_1734.aspx">(6个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_1734.aspx">共120条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_1734.aspx"
														class="f14sc" style="font-weight: normal;">飞利浦（philips）电动剃须刀
														HQ916</a>
												</div>
												<div class="listCommentDisFs4">
													推荐 &nbsp;
													<font class="listCommentDisUser">Lo***66</font> 于 2012-12-1
													发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_11_0_0_1.aspx"
														target="_blank" style="color: #52992E">易迅网</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_29_10_1.aspx"
														title="飞利浦家电怎么样？" class="f12sc">飞利浦家电</a>
												</div>
												<div class="listCommentDisContent">
													刚收到货，就出了点小插曲，还好有几个同事集体出谋划策解决了问题，对易讯工作人员造成的麻烦表示道歉，
													对此商品还算满意，但并不是我预期想象的那样好，感觉设计方面有点问题，但并不影响整体的性能，所以评分为4分！
													<a href="http://www.manmanbuy.com/propj_1734_1289364.aspx"
														class="f12sc" title="Lo***66对飞利浦（philips）电动剃须刀 HQ916的评论">详细内容&gt;</a>
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_1734_1289364.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_2262.aspx"><img
															src="images/Thumb_2011040013464141250.jpg" width="80"
															alt="美的空气加湿器 S30U-K" border="0"
															style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥189</font><a
														href="http://www.manmanbuy.com/pb_2262.aspx">(5个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_2262.aspx">共123条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_2262.aspx"
														class="f14sc" style="font-weight: normal;">美的空气加湿器
														S30U-K</a>
												</div>
												<div class="listCommentDisFs4">
													推荐 &nbsp;
													<font class="listCommentDisUser">lijuan860813</font> 于
													2012-12-1 发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_10_0_0_1.aspx"
														target="_blank" style="color: #52992E">淘宝天猫</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_23_19_1.aspx"
														title="美的家电怎么样？" class="f12sc">美的家电</a>
												</div>
												<div class="listCommentDisContent">
													刚开始还以为卖家忘寄喷头，原来在泡沫低下，包装很好，正品，第一次用刚开始不喷雾，五分钟后雾就很大了，所以第一次使用的时候要等等，用了一阵了，很静音，也不废水，效果很好，信赖美的！
													<a href="http://www.manmanbuy.com/propj_2262_1289375.aspx"
														class="f12sc" title="lijuan860813对美的空气加湿器 S30U-K的评论">详细内容&gt;</a>
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_2262_1289375.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
										<div id="listcommentContent">
											<div class="listCommentLeft">
												<div class="listCommentLeftPic">
													<a href="http://www.manmanbuy.com/p_5993.aspx"><img
															src="images/Thumb_201101001518376513.jpg" width="80"
															alt="贝尔莱德 （Sincere-home ） GS19-DJ 开关蒸汽调节 蒸汽挂烫机（粉蓝色）"
															border="0" style="display: inline-block;"> </a>
												</div>
												<div class="listCommentPrice">
													<font style="color: Red;">￥208</font><a
														href="http://www.manmanbuy.com/pb_5993.aspx">(6个报价</a>）
													<br>
													<a href="http://www.manmanbuy.com/pc_5993.aspx">共206条评论</a>
												</div>
											</div>
											<div class="listCommentLeft2" style="width: 650px;">
												<div class="listCommentDisTitle">
													<a href="http://www.manmanbuy.com/pc_5993.aspx"
														class="f14sc" style="font-weight: normal;">贝尔莱德
														（Sincere-home ） GS19-DJ 开关蒸汽调节 蒸汽挂烫机（粉蓝色）</a>
												</div>
												<div class="listCommentDisFs4">
													推荐 &nbsp;
													<font class="listCommentDisUser">d******9</font> 于
													2012-12-1 发布的评价
													<font class="listCommentDisUser">购买自【<a
														href="http://home.manmanbuy.com/site_10_0_0_1.aspx"
														target="_blank" style="color: #52992E">淘宝天猫</a>】</font>&nbsp;
													&nbsp; 品牌：
													<a href="http://www.manmanbuy.com/pinpai_24_116_1.aspx"
														title="贝尔莱德家电怎么样？" class="f12sc">贝尔莱德家电</a>
												</div>
												<div class="listCommentDisContent">
													宝贝收到，立刻试用了，烫了两件衣服，感觉很满意，出汽很快，而且出汽量很大，烫的衣服效果很好，样式颜色都很漂亮，赞一个，到单位去推荐给朋友同事购买。物流也很给力，拍了后很快就收到，而且包装也好。全5分。
													<a href="http://www.manmanbuy.com/propj_5993_1289442.aspx"
														class="f12sc"
														title="d******9对贝尔莱德 （Sincere-home ） GS19-DJ 开关蒸汽调节 蒸汽挂烫机（粉蓝色）的评论">详细内容&gt;</a>
												</div>
												<div class="listCommentHuifuButton">
													<a href="http://www.manmanbuy.com/propj_5993_1289442.aspx">回复(0)</a>
												</div>
												<div style="margin-bottom: 6px;"></div>
											</div>
										</div>
										<div class="clear"></div>
										<div>
											<hr size="1" class="hrxu">
										</div>
									</div>

								</div>
								<div style="text-align: left; padding: 10px;">
									<span id="ctl00_ContentPlaceHolder1_lblPage"
										style="display: inline-block; height: 21px;">共有1253454条记录
										当前为<font color="red">1</font>/104455页，每页12条记录 &nbsp; <font
										color="999999">首页</font>&nbsp; <font color="999999">上一页</font>&nbsp;
										<a href="http://www.manmanbuy.com/comment_0_0_2.aspx">下一页</a>&nbsp;
										<a href="http://www.manmanbuy.com/comment_0_0_104455.aspx">末页</a>&nbsp;
										跳转:<input type="text" size="2" id="pagenum" name="pagenum">
										<input type="button" value="跳转"
											onclick="location.href=&#39;comment_0_0_&#39;+document.getElementById(&#39;pagenum&#39;).value+&#39;.aspx&#39;">
									</span>
									<br>
								</div>
							</div>

						</div>
						<!--
主体结束
 -->
						<!--
左侧开始
 -->
						<div style="width: 186px; float: left; text-align: left;">



							<div
								style="width: 172px; height: 23px; background-image: url(http://misc.manmanbuy.com/images/classtitle.jpg); padding-top: 6px; padding-left: 10px; text-align: left;">
								<a
									href="./家电口碑大全，看看什么牌子的家电好——慢慢买_files/家电口碑大全，看看什么牌子的家电好——慢慢买.htm"
									style="color: #D84600; font-size: 14px; font-weight: bold;">根据分类查看评论</a>
							</div>
							<div
								style="width: 180px; border: solid 1px #FEC799; background-color: #FEFBEC; text-align: left;">
								<div class="divbigclass">
									<img src="images/bigclassicon.png" alt="大家电" align="middle">
									大 家 电
								</div>
								<div class="divsmallclass">
									<table width="100%">
										<tbody>
											<tr style="height: 1px; font-size: 1px;">
												<td width="85"></td>
												<td></td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_4_0_1.aspx">平板电视</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_5_0_1.aspx">空调</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_63_0_1.aspx">家庭影院</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_6_0_1.aspx">冰箱</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_62_0_1.aspx">DVD播放机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_54_0_1.aspx">音响</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_7_0_1.aspx">洗衣机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_8_0_1.aspx">热水器</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_68_0_1.aspx">酒柜/冰吧/冷柜</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_992_0_1.aspx">消毒柜/洗碗机</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>


								<div class="divbigclass">
									<img src="images/bigclassicon.png" alt="数码电器" align="middle">
									数码电器

								</div>
								<div class="divsmallclass">
									<table width="100%">
										<tbody>
											<tr style="height: 1px; font-size: 1px;">
												<td width="85"></td>
												<td></td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_57_0_1.aspx">手机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_58_0_1.aspx"><font
														color="red">数码相机</font> </a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_83_0_1.aspx">数码摄像机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_87_0_1.aspx">MP3/MP4</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_89_0_1.aspx">高清播放器</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_91_0_1.aspx">电子词典</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_88_0_1.aspx">音箱</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_90_0_1.aspx">电子书</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_95_0_1.aspx">单反镜头</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_100_0_1.aspx">蓝牙耳机</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_102_0_1.aspx">数码相框</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>

								<div class="divbigclass">
									<img src="images/bigclassicon.png" alt="电脑" align="middle">
									电脑办公

								</div>
								<div class="divsmallclass">
									<table width="100%">
										<tbody>
											<tr style="height: 1px; font-size: 1px;">
												<td width="85"></td>
												<td></td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_86_0_1.aspx">笔记本</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_869_0_1.aspx">超极本</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_94_0_1.aspx">平板电脑</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_85_0_1.aspx">上网本</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_69_0_1.aspx">打印机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_113_0_1.aspx">台式机</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_70_0_1.aspx">一体机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_92_0_1.aspx">路由器</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_104_0_1.aspx">移动硬盘</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_96_0_1.aspx">鼠标</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_97_0_1.aspx">内存</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_98_0_1.aspx">显示器</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_99_0_1.aspx">传真机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_101_0_1.aspx">耳机</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_103_0_1.aspx">键盘</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_106_0_1.aspx">CPU</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_107_0_1.aspx">主板</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_108_0_1.aspx">显卡</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_109_0_1.aspx">硬盘</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_110_0_1.aspx">光驱</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_111_0_1.aspx">电源</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_112_0_1.aspx">机箱</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="divbigclass">
									<img src="images/bigclassicon.png" alt="生活小家电" align="middle">
									生活小家电
								</div>
								<div class="divsmallclass">
									<table width="100%">
										<tbody>
											<tr style="height: 1px; font-size: 1px;">
												<td width="85"></td>
												<td></td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_1_0_1.aspx">空调扇</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_2_0_1.aspx">电风扇</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_3_0_1.aspx">饮水机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_24_0_1.aspx"><font
														color="red">挂烫机</font> </a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_25_0_1.aspx">电熨斗</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_19_0_1.aspx">吸尘器</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_75_0_1.aspx">收录音机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_23_0_1.aspx"><font
														color="red">加湿器</font> </a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_17_0_1.aspx">净水设备</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_26_0_1.aspx">取暖器</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_18_0_1.aspx">空气净化器</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_49_0_1.aspx">电话机</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_51_0_1.aspx">除湿/干衣机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_73_0_1.aspx">清洁器</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_78_0_1.aspx">浴霸/排气扇</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_74_0_1.aspx">插座</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_79_0_1.aspx">其它生活电器</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_76_0_1.aspx">电池</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="divbigclass">
									<img src="images/bigclassicon.png" alt="厨房小家电" align="middle">
									厨房小家电
								</div>
								<div class="divsmallclass">
									<table width="100%">
										<tbody>
											<tr style="height: 1px; font-size: 1px;">
												<td width="85"></td>
												<td></td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_9_0_1.aspx"><font
														color="red">豆浆机</font> </a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_10_0_1.aspx">电饭煲</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_11_0_1.aspx">料理机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_55_0_1.aspx">酸奶机</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_56_0_1.aspx">咖啡机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_13_0_1.aspx">微波炉</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_80_0_1.aspx"><font
														color="red">多用途锅</font> </a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_20_0_1.aspx">煮蛋器</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_50_0_1.aspx"><font
														color="red">电压力锅</font> </a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_21_0_1.aspx">电烤箱</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_12_0_1.aspx">榨汁机/刨冰机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_22_0_1.aspx">面包机</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_27_0_1.aspx">吸油烟机/灶具</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_47_0_1.aspx">电水壶</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_52_0_1.aspx">电饼铛/煎烤机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_28_0_1.aspx">消毒柜</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_81_0_1.aspx">果蔬解毒机</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_14_0_1.aspx">电磁炉</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_82_0_1.aspx">其它厨房电器</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="divbigclass">
									<img src="images/bigclassicon.png" alt="个人护理" align="middle">
									个人护理
								</div>

								<div class="divsmallclass">
									<table width="100%">
										<tbody>
											<tr style="height: 1px; font-size: 1px;">
												<td width="85"></td>
												<td></td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_30_0_1.aspx">口腔护理</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_29_0_1.aspx">剃须刀</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_32_0_1.aspx">剃/脱毛器</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_31_0_1.aspx"><font
														color="red">电吹风</font> </a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_33_0_1.aspx">美容器</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_34_0_1.aspx">美发器</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="divbigclass">
									<img src="images/bigclassicon.png" alt="健康电器" align="middle">
									健康电器

								</div>

								<div class="divsmallclass">
									<table width="100%">
										<tbody>
											<tr style="height: 1px; font-size: 1px;">
												<td width="85"></td>
												<td></td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_35_0_1.aspx">足浴盆/足浴器</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_36_0_1.aspx">血压计</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_72_0_1.aspx">血糖仪</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_38_0_1.aspx"><font
														color="red">按摩器</font> </a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_37_0_1.aspx">健康秤/厨房秤</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_39_0_1.aspx">按摩椅</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_65_0_1.aspx">计步器/脂肪仪</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_53_0_1.aspx">体温计</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>




								<div class="divbigclass">
									<img src="images/bigclassicon.png" alt="正品鞋" align="middle">
									正品鞋

								</div>
								<div class="divsmallclass">
									<table width="100%">
										<tbody>
											<tr style="height: 1px; font-size: 1px;">
												<td width="85"></td>
												<td></td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_870_0_1.aspx">男鞋</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_871_0_1.aspx">女鞋</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_872_0_1.aspx">运动鞋</a>
												</td>
												<td>
													<a href="http://www.manmanbuy.com/comment_873_0_1.aspx">户外鞋</a>
												</td>
											</tr>
											<tr style="height: 20px; line-height: 20px;">
												<td>
													<a href="http://www.manmanbuy.com/comment_874_0_1.aspx">童鞋</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>


						</div>
						<!--
左侧结束
 -->
					</div>
					<div class="clear"></div>

				</form>
			</div>
		</div>
	</body>
</html>
