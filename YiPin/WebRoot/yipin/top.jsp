<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.yipin.model.Top" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/paiming.css">
	<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/thickbox_plus.js"></script>


<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="js/jquery.scrollshow.js"></script>
	<script type="text/javascript" src="js/lanrentuku_com.js"></script>
	<style>

/* 垂直滚动
------------------------------ */
.scroll_vertical{position:relative;width:180px;height:340px;padding:20px;line-height:20px;border-top:1px solid #CCC;border-bottom:1px solid #CCC;border-left:1px solid #CCC;border-right:1px solid #CCC;}
.scroll_vertical .box{overflow:hidden;position:relative;height:280px;margin:40px 0 0 0;}
.scroll_vertical .plus,
.scroll_vertical .minus{position:absolute;left:50px;width:120px;height:30px;background:#09f;cursor:pointer;}
.scroll_vertical .plus{top:10px;}
.scroll_vertical .minus{bottom:10px;}
.scroll_vertical .plus:hover,
.scroll_vertical .minus:hover{background:#0cf;}
.scroll_vertical ul{position:absolute;top:0;left:0;}
.scroll_vertical li{height:140px;text-align:center;}
</style>
<script>
$(function(){

	$("#pic_list_4").scrollShow("bottom",{speed:500,time:1500,plus:true,minus:true});
});
</script>
<script type="text/javascript">
   $("#dialogue").dialog({
     
   autoOpen: false,//是否页面载入时自动打开
 height: 300,
 width: 300,
 modal: true,//是否模态
 show: "drop",//dialog的动画效果
 buttons:{
 关闭:function(){
 $(this).dialog("close");
 }
 }
 }
     
   );
   $("#showdialog").click(function () {//按钮的单击事件
 $("#dialogue").dialog("open");
 });

</script>

  
   
   <script>
$(document).ready(function() {
	var id;
	$(".addcomment").bind("click", function(e) {
		id = $(this).parents(".coupon").attr('id');
		$('#ex2').jqm({ajax: '/duihuakuang.jsp', trigger: 'span.addcomment'});
		$('#ex2').jqmShow();
		$('button').live('click', function() {
			$('input[name=postId]').val(id);
			var dataString = $('form').serialize()+'&submit=submit';
			$.ajax({
				type: "POST",
				url: '/duihuakuang.jsp',
				data: dataString,
				success: function(data) {
					$('#ex2').html(data);
					$('.jqmClose').live('click', function() {
						$('.jqmOverlay').trigger('click');
						return false;
					});
				}
			});
			return false;
		});
	});
});
</script>

   
   <style type="text/css">
     .comment:hover, .addcomment:hover, .rateyes:hover, .rateno:hover {
cursor: hand;
cursor: pointer;
color: 
#C60;
text-decoration: underline;
}
   </style>
   
 
  </head>
  
  <body>
      
    
    <div class="main">




<jsp:include page="head.jsp"></jsp:include>






  <div class="content">
    <div class="content_resize">
      <!-- <img src="images/hbg_img.jpg" width="958" height="245" alt="image" class="hbg_img" /> -->
      <div class="mainbar">
         <div class="article">
        <h2 style="font: bold;background: #E5EAEF;color: black;"><span>&nbsp;每天都精彩</span></h2>
         <table border="0" width="100%" cellpadding="0">
								<tbody>
									<%
										List<Top> list = (List) request.getAttribute("list");
										for (Top top : list) {
									%>
									<tr>
										<td>
											<img src="<%=top.getImage()%>" border="0" align="left">
										</td>
										<td>
											<font color="#FF7800"><b><%=top.getTime()%></b>,<%=top.getGoodsname()%>,<%=top.getIntroduce()%></font>
										</td>
										<td>
											<font color="#2CADFF"><%=top.getPrice()%></font>
										</td>
									</tr>
									<tr>
										<td>
											
										</td>
										<td>
										
											
										</td>
										<td>
											<a href="<%=top.getAddr()%>">
											<input style="padding:3px 15px;color: #E6E6E6;background: #2CADFF;cursor: pointer;"  type="button" value="去购买">
											</a>
										</td>
									</tr>
									
								</tbody>
								<%
									}
								%>

							</table>
         
         
         
         <div class="clr"></div>
        </div>
       
        <p class="pages"><small>更多推荐 &nbsp;&nbsp;&nbsp;</small> <span>1</span> <a href="#">2</a> <a href="#">&raquo;</a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <div class="clr"></div>
          
        </div>
        <div class="gadget" style="height:50px;">
         <div class="clr"></div>
           
         
		
		
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

 
  
  
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>. <span>Layout from [Z] <a href="http://www.cssmoban.com/" title="网页模板">yeepin.com</a></span></p>
      <div class="clr"></div>
    </div>
  </div>
</div>


  </body>
</html>
