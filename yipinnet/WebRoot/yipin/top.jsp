<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.yipinnet.model.Item"%>
<%@page import="com.yipinnet.model.Comments"%>
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
		<link rel="stylesheet" type="text/css"
			href="bootstrap/css/bootstrap.css" />

		<script type="text/javascript"
			src="http://twitter.github.io/bootstrap/assets/js/jquery.js">
</script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.js">
</script>

		<style type="text/css">
img {
	width: 110px;
	height: 155px;
	max-width: 100%;
	vertical-align: middle;
	border: 0;
	-ms-interpolation-mode: bicubic;
}
</style>


	</head>



	<body>


		<jsp:include page="head.jsp"></jsp:include>

		<div class="main">

			<h2 style="color: white; padding-top: 60px;"></h2>

			<%
			   int i = 0;
				List<Item> list = (List) request.getAttribute("list");
				List<Comments> comments = (List) request.getAttribute("comment");
				for (Item topItem : list) {
			%>
<div id="myComment<%=topItem.getGoodsid() %>" class="modal hide fade" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						×
					</button>
					<h3 id="myModalLabel">
						查看用户评论
					</h3>
				</div>
				<div class="modal-body">

					<% for(Comments comment : comments){
					 if(topItem.getGoodsid().equals(comment.getGoodsid())){%>
					   <%i++; %>
					  <p><%=comment.getContenttime() %> By <%=comment.getUsername() %></p>
					 <p><%=comment.getContent() %></p>
					<% } }%>

				</div>

			</div>
			<div class="container" align="center" style="margin-top: 2%">
				<span style="width: 110px; height: 155px"> <img
						src="<%=topItem.getImage()%>" border="0" align="left"
						width="110px" height="155px"> </span>
				<h4>

					<%=topItem.getGoodsname()%>
				</h4>
				<h4 class="offset9">
					<%=topItem.getPrice()%>
				</h4>
				
				<%
				 String intro = topItem.getIntroduce();
				if(intro != null) {%>
				<p>
					<font color="#FF7800"><%=topItem.getIntroduce()%> </font>
					</p>
					<%} %>
				
				<div class="row-fluid">
					<div class="span2">
						<p>
							<a href="#myComment<%=topItem.getGoodsid() %>" data-toggle="modal">
								<button class="btn btn btn-success ">
									Comments (<%=i %>)
									<%i=0; %>
								</button> </a>
						</p>
					</div>
					<div class="span2">
						<p>
							<a href="#myModal<%=topItem.getGoodsid() %>" data-toggle="modal">
								<button class="btn btn btn-success ">
									Add Comments
								</button> </a>
						</p>
					</div>
					<div class="span6">
						<p class="offset9">
							<a href="<%=topItem.getAddr()%>">
								<button class="btn btn btn-success ">
									LET'S BUY~
								</button> </a>
						</p>
					</div>
				</div>
				<!-- Modal -->
			<div id="myModal<%=topItem.getGoodsid() %>" class="modal hide fade" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						×
					</button>
					<h3 id="myModalLabel">
						添加评论
					</h3>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" action="YipinServlet?flag=addComment" method="post">
					   <input type="hidden" name="goodsid" value="<%=topItem.getGoodsid()%>">
						<div class="control-group">
							<label class="control-label">
								UserName:
							</label>
							<div class="controls">
							<%
								String username = (String) request.getSession().getAttribute(
										"username");
								if (username == null) {
							%>
							<input type="hidden" name="username" value="anonymous">
								<input type="text" value="anonymous" disabled="disabled">
								<%
								} else {
							%>
							<input type="hidden" name="username" value="<%=username%>">
							<input type="text" value="<%=username%>" disabled="disabled">
							<%
								}
							%>
							
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">
								Comment:
							</label>
							<div class="controls">
								<textarea name="content" rows="4"></textarea>
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<button type="submit" class="btn">
									Submit
								</button>
							</div>
						</div>
					</form>


				</div>

			</div>
			</div>


			



			<%
				}
			%>
		</div>



	</body>

</html>


