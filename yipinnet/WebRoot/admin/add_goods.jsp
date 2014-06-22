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

		<title>My JSP 'add_goods.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/css.css">

		<script type="text/javascript">

function changeimg()

{

	var myimg = document.getElementById("myimg");

	myimg.src = "yzm.jsp?" + Math.random();//随机生成一个数字，让图片缓冲区认为不是同一个缓冲区   

}

function validate_request(field, alerttext) {
	with (field) {
		if (value == null || value == "") {
			alert(alerttext);
			return false
		} else {
			return true
		}
	}
}
function validate_form(thisform) {
	with (thisform) {
		if (validate_required(email, "还没有填写邮箱！") == false) {
			email.focus();
			return false
		}
	}

}
</script>

	</head>

	<body>
		<center>

			<h2>
				请输入要扫描的商品关键词，并选择所属商品类型
			</h2>
			<form action="GoodsServlet?flag=scangoods" method="post">
				<table>

					<tr>
						<td>
							查询条件：
						</td>
						<td>
							<select name="condition">
								<option value="Books">
									Books
								</option>
								<option value="Software">
									Software
								</option>
								<option value="SportingGoods">
									SportingGoods
								</option>
								<option value="Toys">
									Toys
								</option>
								
							</select>
						</td>
						<td>
							<input type="text" name="search_content">
						</td>
					</tr>
					<tr>
						<td>
							<input type="submit" value="提交">
						</td>
						<td>
							<input type="reset" value="重置">
						</td>
					</tr>
				</table>

			</form>


		</center>
	</body>
</html>
