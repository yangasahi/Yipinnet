<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'user_regist.jsp' starting page</title>

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
  <script type="text/javascript" src="js/ajax_jquery.js"></script>

		<script type="text/javascript" language="javascript">
var allReturn = false;
var bUserNz = false;//返回用户名验证结果
var bPassNz = false;//返回密码验证结果
var bCodeNz = false;//返回手机验证码验证结果
function out_uname() {
	$("#RegUser")
			.html(
					"<img src='http://misc.manmanbuy.com/images/user/loading.gif' align='absmiddle' /> 正在检测用户名是否有效");
	var obj = $("#RegUser");
	var strUser = $("#txtRegUser").val();
	var str = sl(strUser);
	var chk = true;
	if (str < 2 || str > 14) {
		$("#RegUser").html(
						"<img src='http://misc.manmanbuy.com/images/user/error.gif' align='absmiddle' /> <font color=red>你输入的会员名 <font  color=000000 style=font-size:16px>"
								+ strUser + "</font> 太短或太长,请输入2-14位。</font>");
		return false;
	}

	if (chk) {
	    $.ajax({
           url:'UserServlet?flag=isUsername',	    
	       type:'post',
	       data:"username=" + $("#txtRegUser").val(),
	       dataType:'json',
	       success : function(data){
	           if(data.success==false){
	           
	             $("#RegUser").html("<img src='http://misc.manmanbuy.com/images/user/error.gif' align='absmiddle' /> <font color=red>你输入的会员名 <font color=000000 style=font-size:16px>"
														+ strUser
														+ "</font> 已被注册,请输入其它会员名尝试</font>");
	           }else{
	              $("#RegUser").html("<img src='http://misc.manmanbuy.com/images/user/checkbullet.gif' align='absmiddle' /> 恭喜你! 会员名 <font style=font-size:16px color=green>"
														+ strUser
														+ "</font> 可以注册");
           }
	       }
	    });} else {
		$("#RegUser")
				.html(
						"<img src='http://misc.manmanbuy.com/images/user/error.gif' align='absmiddle' /> 请换个会员名注册");
	}
	return chk;
}

function isPassLen() {
	if ($("#UserPass1").val().length < 6) {
		$("#errPass1")
				.html(
						"<img src='http://misc.manmanbuy.com/images/user/error.gif' align='absmiddle' /> <font color=red>密码长度至少6位</font>");
	} else {
		$("#errPass1")
				.html(
						"<img src='http://misc.manmanbuy.com/images/user/checkbullet.gif' align='absmiddle' />");
	}
	return false;
}
function isPassLen2() {
	if ($("#UserPass2").val().length < 6) {
		$("#errPass2")
				.html(
						"<img src='http://misc.manmanbuy.com/images/user/error.gif' align='absmiddle' /> <font color=red>密码长度至少6位</font>");
	} else {
		if ($("#UserPass2").val() != $("#UserPass1").val()) {
			$("#errPass2")
					.html(
							"<img src='http://misc.manmanbuy.com/images/user/error.gif' align='absmiddle' /> <font color=red>两次密码输入不一致</font>");
		} else {
			bPassNz = true;
			$("#errPass2")
					.html(
							"<img src='http://misc.manmanbuy.com/images/user/checkbullet.gif' align='absmiddle' />");
		}
	}
	return false;
}

function isEmail() {
	if (!isEmailV($("#txtEmail").val())) {
		$("#errEmail")
				.html(
						"<img src='http://misc.manmanbuy.com/images/user/error.gif' align='absmiddle' /> <font color=red>电子邮箱格式不正确，请检查</font>");
	} else {
		$("#errEmail")
				.html(
						"<img src='http://misc.manmanbuy.com/images/user/checkbullet.gif' align='absmiddle' />");
	}
	return false;
}

function isEmailV(str) {
	var re = /^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	return re.test(str);
}
function sl(st) {
	sl1 = st.length;
	strLen = 0;
	for (i = 0; i < sl1; i++) {
		if (st.charCodeAt(i) > 255)
			strLen += 2;
		else
			strLen++;
	}
	return strLen;
}

function checkall() {
	checkReg();
	return allReturn;
}

function checkReg() {
	out_uname();
	if (bUserNz == false) {
		alert("会员名输入有误");
		$("#txtRegUser").focus();
		allReturn = false;
		return false;
	}

	isPassLen2();
	if (bPassNz == false) {
		alert("密码输入有误");
		$("#UserPass1").focus();
		allReturn = false;
		return false;
	}

	if ($("#txtEmail").val().length < 1) {
		alert("电子邮箱不能为空");
		$("#txtEmail").focus();
		allReturn = false;
		return false;
	}

	if (!isEmailV($("#txtEmail").val())) {
		alert("电子邮箱格式不正确，请检查");
		$("#txtEmail").focus();
		allReturn = false;
		return false;
	}
	allReturn = true;
}

</script>


	</head>

	<body>
		<jsp:include page="head.jsp"></jsp:include>

		<div class="regist">
			<div align="center">

				<form name="registform" method="post" action="UserServlet?flag=save" id="registform">
					<div>
						<input type="hidden" name="privileges" value="0">
						<input type="hidden" name="isface" value="y">
					</div>


					<div style="width: 982px; border: solid 1px #ccc; margin-top: 8px;">
						<div
							style="background-image: url(images/serch_bg.gif); text-align: left; padding: 6px 10px;">
							<font style="font-weight: bold; color: #666666; font-size: 14px;">

								新用户注册</font>
						</div>

						<table align="center" width="500">
							<tbody>
								<tr>
									<td>
										<div id="PanelMessage">

											<div id="message"></div>

										</div>

										<div id="PanelReg">

											
											<div
												style="padding: 6px 0px; margin: 100px 0px; font-size: 14px;">
												<table cellpadding="6">
													<tbody>
														<tr>
															<td align="right" style="font-size: 14px; height: 40px;">
																用户名：
															</td>
															<td style="text-align: left;">
																<input type="text" name="username" id="txtRegUser"
																	size="40" onblur="out_uname();">
																<br>
																<span id="RegUser" class="spandi"> <img
																		src="images/jg.gif">请使用英文和数字，有些网站无法跟到中文名的订单。</span>
															</td>
														</tr>
														<tr>
															<td align="right" style="font-size: 14px; height: 40px;">
																设置密码：
															</td>
															<td style="text-align: left;">
																<input type="password" name="password" id="UserPass1"
																	size="40" onblur="isPassLen()">
																<br>
																<span id="errPass1" class="spandi">长度为6-20位，区分大小写</span>
															</td>
														</tr>
														<tr>
															<td align="right" style="font-size: 14px; height: 40px;">
																确认密码：
															</td>
															<td style="text-align: left;">
																<input type="password" name="UserPass2" id="UserPass2"
																	size="40" onblur="isPassLen2()">
																<br>
																<span id="errPass2" class="spandi">重复填写密码，以保证刚才所填的密码和您所想的一致</span>
															</td>
														</tr>



														<tr>
															<td align="right" style="font-size: 14px; height: 40px;">
																电子邮箱：
															</td>
															<td style="text-align: left;">
																<input type="text" name="email" id="txtEmail"
																	size="40" onblur="isEmail()">
																<br>
																<span id="errEmail" class="spandi">用于找回密码，重要</span>
															</td>
														</tr>

														<tr>
															<td></td>
															<td align="left">
																<input type="submit" name="btnReg" value="注册用户" id="btnReg">
															</td>
														</tr>
													</tbody>
												</table>
											</div>

										</div>

									</td>
								</tr>
							</tbody>
						</table>
						

					</div>
				</form>

			</div>
		</div>
	</body>
</html>
