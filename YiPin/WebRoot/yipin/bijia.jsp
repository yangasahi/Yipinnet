<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.yipin.model.Hotcata" %>
<%@ page import="com.yipin.model.Recomm" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bijia.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style_bijia.css">
		<link rel="stylesheet" type="text/css" href="css/wgyhstyle.css">
		<link rel="stylesheet" type="text/css" href="css/menuleft.css">
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="js/tab_qiehuc.js"></script>

	<script type="text/javascript" src="js/jquery.scrollshow.js"></script>
	<style>
/* 水平滚动
------------------------------ */
.scroll_horizontal{position:relative;width:940px;height:310px;padding:20px;line-height:20px;background:white;border-top:1px solid #DDD;border-left:1px solid #DDD;border-right:1px solid #DDD;border-bottom:1px solid #DDD;}
.scroll_horizontal .box{overflow:hidden;position:relative;width:910px;height:310px;margin:0 auto;}
.scroll_horizontal .plus,
.scroll_horizontal .minus{top:130px;position:absolute;width:20px;height:80px;background:#f90;cursor:pointer;}
.scroll_horizontal .plus{left:10px;}
.scroll_horizontal .minus{right:10px;}
.scroll_horizontal .plus:hover,
.scroll_horizontal .minus:hover{background:#f60;}
.scroll_horizontal ul{position:absolute;top:0;left:0;width:9999px;}
.scroll_horizontal li{float:left;width:200px;text-align:center;}
/* 垂直滚动
------------------------------ */
.scroll_vertical{margin-top:50px;position:relative;height:340px;padding:20px;line-height:20px;background:white;}
.scroll_vertical .box{border: 1px solid #EE5A00;overflow:hidden;position:relative;height:300px;margin:20px 0 30px 0px;}
.scroll_vertical .plus{position:absolute;left:23px;width:220px;height:20px;background-image:url("images/jt1.png"); cursor:pointer;background-position: center;}
.scroll_vertical .minus{position:absolute;left:23px;width:220px;height:20px;background-image:url("images/jt2.png"); cursor:pointer;background-position: center;}
.scroll_vertical .plus{top:10px;}
.scroll_vertical .minus{bottom:10px;}
.scroll_vertical .plus:hover{background-image: url("images/jt1_1.png");}
.scroll_vertical .minus:hover{background-image: url("images/jt2_2.png");}
.scroll_vertical ul{position:absolute;top:0;left:0;}
.scroll_vertical li{height:100px;text-align:center;}
</style>
<script>
$(function(){
$("#pic_list_2").scrollShow("right",{step:3});
$("#pic_list_3").scrollShow("right",{step:3});
	$("#pic_list_4").scrollShow("bottom",{speed:1000,time:1500,plus:true,minus:true});
});
</script>
		
	
	<script language="javascript" >
$(function(){
	 var len2  = $("#idNum2 > li").length;
	 var index2 = 0;
	 $("#idNum2 li").mouseover(function(){
		index2  =   $("#idNum2 li").index(this);
		showImg2(index2);
	});	

	 $('#idTransformView2').hover(function(){
			  if(MyTime2){
				 clearInterval(MyTime2);
			  }
	 },function(){
			  MyTime2 = setInterval(function(){
				showImg2(index2)
				index2++;
				if(index2==len2){index2=0;}
			  } , 4000);
	 });
	 //自动开始
	 var MyTime2 = setInterval(function(){
		showImg2(index2)
		index2++;
		if(index2==len2){index2=0;}
	 } , 4000);
})
function showImg2(i){
		$("#idSlider2").stop(true,false).animate({left : -720*i},1000);
		 $("#idNum2 li")
			.eq(i).addClass("on")
			.siblings().removeClass("on");
}
</script>
	
	<style>

img { vertical-align:baseline; border:none; }

ul { list-style:none; }

ul#gallery {overflow:hidden; }
ul#gallery li {  float:left; margin:10px 10px 10px 0; display:inline; }

#bigimage { position:absolute; display:none; }
#bigimage img { width:400px; height:400px; padding:5px; background:#fff; border:1px solid #e3e3e3; }
</style>
	<script>
//<![CDATA[
$(function(){	
	
    var x = 22;
	var y = 20;
		
	$("a.smallimage").hover(function(e){
		$("body").append('<p id="bigimage"><img src="'+ this.rel + '" alt="" /></p>');
        $(this).find('img').stop().fadeTo('slow',0.5);		
		widthJudge(e);
	    $("#bigimage").fadeIn('fast');
	},function(){
	    $(this).find('img').stop().fadeTo('slow',1);
		$("#bigimage").remove();
    });	
	
	$("a.smallimage").mousemove(function(e){
		widthJudge(e);
	});	
	
    function widthJudge(e){
		var marginRight = document.documentElement.clientWidth - e.pageX; 
		var imageWidth = $("#bigimage").width();
		if(marginRight < imageWidth)
		{
		    x = imageWidth + 22;
			$("#bigimage").css({top:(e.pageY - y ) + 'px',left:(e.pageX - x ) + 'px'});	
		}else{
		    x = 22;
		    $("#bigimage").css({top:(e.pageY - y ) + 'px',left:(e.pageX + x ) + 'px'});
        };	
	}
});
//]]>
</script>
	
	
	</head>

	<body>
		



<jsp:include page="head.jsp"></jsp:include>


<div class="widthin widthjuzhong">
    <div id="cuxiaoqu">
    		<div class="cx-left left123">
            	<h3 class="bgindex"><b class="bgindex">商品目录</b></h3>
               
          
          
          <ul id="menu">
    
	<li><a href="">户外鞋服</a>    
 <div class="cms_submenu">
<div class="cmsmenuleft" >
<dl class="menu_recommend">
<dt>热门类目</dt>
    
<dd>
  <%
			List<Hotcata> hotcata_outdoor = (List) request.getAttribute("hotcata_outdoor");
			for (Hotcata hotcata_out : hotcata_outdoor) {
		%>   
<i><a href=""><%=hotcata_out.getHotname() %></a></i>
<%} %>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_price">
<dt>价格区间</dt>
<dd>
<i><a href="">100以下</a></i>
<i><a href="">100-199</a></i>
<i><a href="">200-299</a></i>
<i><a href="">300-499</a></i>
<i><a href="">500-699</a></i>
<i><a href="">700-899</a></i>
<i><a href="">900以上</a></i>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_new">
<dt>活动推荐</dt>
<dd>
<a href="">[新品] 哥雷夫新品上市 5折热卖！</a><br/>
<a href="">[促销] 奥康皮鞋全场2.8折起！</a><br/>
<a href="">[特卖] Adidas断码清仓 全场299元起</a>
</dd>
</dl>
</div>
<div class="cmsmenuright">
<dl>
<dt>推荐品牌</dt>
<dd>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="02.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="05.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="06.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="07.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="08.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="09.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="10.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="11.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="12.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a></dd>
</dl>
</div>
<div class="clear"></div>
</div>
    </li><!-- End 4 columns Item -->

  <li><a href="http://www.duice.net/">图书</a>    
 <div class="cms_submenu">
<div class="cmsmenuleft" >
<dl class="menu_recommend">
<dt>热门类目</dt>
 
<dd>
<%
			List<Hotcata> hotcata_book = (List) request.getAttribute("hotcata_book");
			for (Hotcata hotcata_bo : hotcata_book) {
		%>  
<i><a href=""><%=hotcata_bo.getHotname() %></a></i>
<%} %>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_price">
<dt>价格区间</dt>
<dd>
<i><a href="">100以下</a></i>
<i><a href="">100-199</a></i>
<i><a href="">200-299</a></i>
<i><a href="">300-499</a></i>
<i><a href="">500-699</a></i>
<i><a href="">700-899</a></i>
<i><a href="">900以上</a></i>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_new">
<dt>活动推荐</dt>
<dd>
<a href="">[新品] 哥雷夫新品上市 5折热卖！</a><br/>
<a href="">[促销] 奥康皮鞋全场2.8折起！</a><br/>
<a href="">[特卖] Adidas断码清仓 全场299元起</a>
</dd>
</dl>
</div>
<div class="cmsmenuright">
<dl>
<dt>推荐品牌</dt>
<dd>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="02.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="05.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="06.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="07.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="08.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="09.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="10.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="11.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="12.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a></dd>
</dl>
</div>
<div class="clear"></div>
</div>
    </li><!-- End 4 columns Item -->
	
	<li><a href="http://www.duice.net/">手机数码</a>    
 <div class="cms_submenu">
<div class="cmsmenuleft" >
<dl class="menu_recommend">
<dt>热门类目</dt>

<dd>
<%
			List<Hotcata> hotcata_digital = (List) request.getAttribute("hotcata_digital");
			for (Hotcata hotcata_digi : hotcata_digital) {
		%>  
<i><a href=""><%=hotcata_digi.getHotname() %></a></i>
<%} %>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_price">
<dt>价格区间</dt>
<dd>
<i><a href="">100以下</a></i>
<i><a href="">100-199</a></i>
<i><a href="">200-299</a></i>
<i><a href="">300-499</a></i>
<i><a href="">500-699</a></i>
<i><a href="">700-899</a></i>
<i><a href="">900以上</a></i>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_new">
<dt>活动推荐</dt>
<dd>
<a href="">[新品] 哥雷夫新品上市 5折热卖！</a><br/>
<a href="">[促销] 奥康皮鞋全场2.8折起！</a><br/>
<a href="">[特卖] Adidas断码清仓 全场299元起</a>
</dd>
</dl>
</div>
<div class="cmsmenuright">
<dl>
<dt>推荐品牌</dt>
<dd>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="02.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="05.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="06.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="07.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="08.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="09.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="10.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="11.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="12.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a></dd>
</dl>
</div>
<div class="clear"></div>
</div>
    </li><!-- End 4 columns Item -->
	
	<li><a href="http://www.duice.net/">电脑整机</a>    
 <div class="cms_submenu">
<div class="cmsmenuleft" >
<dl class="menu_recommend">
<dt>热门类目</dt>

<dd>
<%
			List<Hotcata> hotcata_computer = (List) request.getAttribute("hotcata_computer");
			for (Hotcata hotcata_comp : hotcata_computer) {
		%>  
<i><a href=""><%=hotcata_comp.getHotname() %></a></i>
<%} %>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_price">
<dt>价格区间</dt>
<dd>
<i><a href="">100以下</a></i>
<i><a href="">100-199</a></i>
<i><a href="">200-299</a></i>
<i><a href="">300-499</a></i>
<i><a href="">500-699</a></i>
<i><a href="">700-899</a></i>
<i><a href="">900以上</a></i>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_new">
<dt>活动推荐</dt>
<dd>
<a href="">[新品] 哥雷夫新品上市 5折热卖！</a><br/>
<a href="">[促销] 奥康皮鞋全场2.8折起！</a><br/>
<a href="">[特卖] Adidas断码清仓 全场299元起</a>
</dd>
</dl>
</div>
<div class="cmsmenuright">
<dl>
<dt>推荐品牌</dt>
<dd>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="02.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="05.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="06.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="07.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="08.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="09.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="10.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="11.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="12.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a></dd>
</dl>
</div>
<div class="clear"></div>
</div>
    </li><!-- End 4 columns Item -->
	
	<li><a href="http://www.duice.net/">电脑配件</a>    
 <div class="cms_submenu">
<div class="cmsmenuleft" >
<dl class="menu_recommend">
<dt>热门类目</dt>

<dd>
<%
			List<Hotcata> hotcata_fitting = (List) request.getAttribute("hotcata_fitting");
			for (Hotcata hotcata_fit : hotcata_fitting) {
		%>  
<i><a href=""><%=hotcata_fit.getHotname() %></a></i>
<%} %>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_price">
<dt>价格区间</dt>
<dd>
<i><a href="">100以下</a></i>
<i><a href="">100-199</a></i>
<i><a href="">200-299</a></i>
<i><a href="">300-499</a></i>
<i><a href="">500-699</a></i>
<i><a href="">700-899</a></i>
<i><a href="">900以上</a></i>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_new">
<dt>活动推荐</dt>
<dd>
<a href="">[新品] 哥雷夫新品上市 5折热卖！</a><br/>
<a href="">[促销] 奥康皮鞋全场2.8折起！</a><br/>
<a href="">[特卖] Adidas断码清仓 全场299元起</a>
</dd>
</dl>
</div>
<div class="cmsmenuright">
<dl>
<dt>推荐品牌</dt>
<dd>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="02.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="05.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="06.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="07.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="08.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="09.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="10.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="11.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="12.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a></dd>
</dl>
</div>
<div class="clear"></div>
</div>
    </li><!-- End 4 columns Item -->
	
	<li><a href="http://www.duice.net/">运动产品</a>    
 <div class="cms_submenu">
<div class="cmsmenuleft" >
<dl class="menu_recommend">
<dt>热门类目</dt>

<dd>
<%
			List<Hotcata> hotcata_sports = (List) request.getAttribute("hotcata_sports");
			for (Hotcata hotcata_spor : hotcata_sports) {
		%>  
<i><a href=""><%=hotcata_spor.getHotname() %></a></i>
<%} %>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_price">
<dt>价格区间</dt>
<dd>
<i><a href="">100以下</a></i>
<i><a href="">100-199</a></i>
<i><a href="">200-299</a></i>
<i><a href="">300-499</a></i>
<i><a href="">500-699</a></i>
<i><a href="">700-899</a></i>
<i><a href="">900以上</a></i>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_new">
<dt>活动推荐</dt>
<dd>
<a href="">[新品] 哥雷夫新品上市 5折热卖！</a><br/>
<a href="">[促销] 奥康皮鞋全场2.8折起！</a><br/>
<a href="">[特卖] Adidas断码清仓 全场299元起</a>
</dd>
</dl>
</div>
<div class="cmsmenuright">
<dl>
<dt>推荐品牌</dt>
<dd>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="02.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="05.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="06.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="07.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="08.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="09.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="10.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="11.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="12.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a></dd>
</dl>
</div>
<div class="clear"></div>
</div>
    </li><!-- End 4 columns Item -->
	
	<li><a href="http://www.duice.net/">化妆护肤品</a>    
 <div class="cms_submenu">
<div class="cmsmenuleft" >
<dl class="menu_recommend">
<dt>热门类目</dt>

<dd>
<%
			List<Hotcata> hotcata_comestic = (List) request.getAttribute("hotcata_comestic");
			for (Hotcata hotcata_come : hotcata_comestic) {
		%>  
<i><a href=""><%=hotcata_come.getHotname() %></a></i>
<%} %>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_price">
<dt>价格区间</dt>
<dd>
<i><a href="">100以下</a></i>
<i><a href="">100-199</a></i>
<i><a href="">200-299</a></i>
<i><a href="">300-499</a></i>
<i><a href="">500-699</a></i>
<i><a href="">700-899</a></i>
<i><a href="">900以上</a></i>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_new">
<dt>活动推荐</dt>
<dd>
<a href="">[新品] 哥雷夫新品上市 5折热卖！</a><br/>
<a href="">[促销] 奥康皮鞋全场2.8折起！</a><br/>
<a href="">[特卖] Adidas断码清仓 全场299元起</a>
</dd>
</dl>
</div>
<div class="cmsmenuright">
<dl>
<dt>推荐品牌</dt>
<dd>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="02.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="05.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="06.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="07.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="08.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="09.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="10.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="11.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="12.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a></dd>
</dl>
</div>
<div class="clear"></div>
</div>
    </li><!-- End 4 columns Item -->
	
	<li><a href="http://www.duice.net/">礼品箱包</a>    
 <div class="cms_submenu">
<div class="cmsmenuleft" >
<dl class="menu_recommend">
<dt>热门类目</dt>
 
<dd>
<%
			List<Hotcata> hotcata_gift = (List) request.getAttribute("hotcata_gift");
			for (Hotcata hotcata_gi : hotcata_gift) {
		%> 
<i><a href=""><%=hotcata_gi.getHotname() %></a></i>
<%} %>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_price">
<dt>价格区间</dt>
<dd>
<i><a href="">100以下</a></i>
<i><a href="">100-199</a></i>
<i><a href="">200-299</a></i>
<i><a href="">300-499</a></i>
<i><a href="">500-699</a></i>
<i><a href="">700-899</a></i>
<i><a href="">900以上</a></i>
</dd>

</dl>
<div class="clear"></div>
<dl class="menu_new">
<dt>活动推荐</dt>
<dd>
<a href="">[新品] 哥雷夫新品上市 5折热卖！</a><br/>
<a href="">[促销] 奥康皮鞋全场2.8折起！</a><br/>
<a href="">[特卖] Adidas断码清仓 全场299元起</a>
</dd>
</dl>
</div>
<div class="cmsmenuright">
<dl>
<dt>推荐品牌</dt>
<dd>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="02.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="05.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="06.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="07.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="08.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="09.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="10.gif"   alt="耐克" /></a>
<a href="" title="耐克"><img  src="11.gif"   alt="耐克" /></a> 
<a href="" title="阿迪"><img  src="12.gif"  alt="阿迪达斯" /></a> 
<a href="" title="卡帕"><img  src="03.gif" alt="卡帕" /></a>
<a href="" title="茵宝"><img  src="04.gif"  alt="茵宝" /></a>
<a href="" title="耐克"><img  src="01.gif"   alt="耐克" /></a></dd>
</dl>
</div>
<div class="clear"></div>
</div>
    </li><!-- End 4 columns Item -->	
	

</ul>

          
          
          
        	
        	

            </div>
            <div class="cx-cen bgindex left">
            	<div class="focus">	
            		
            			<div class="container" id="idTransformView2">
			  <ul class="slider slider2" id="idSlider2">
              				 				<li><a href="#" target="_blank" title="苏醒的乐园旗舰店"><img src="images/banner1.jpg" alt="苏醒的乐园旗舰店"/></a></li>
			  				<li><a href="#" target="_blank" title="佐伊女包/欧美日韩/换季大促/5折特价"><img src="images/banner2.jpg" alt="佐伊女包/欧美日韩/换季大促/5折特价"/></a></li>
			  				<li><a href="#" target="_blank" title="安肤奇旗舰店"><img src="images/banner3.jpg" alt="安肤奇旗舰店"/></a></li>
			  				<li><a href="#" target="_blank" title="淘宝韩都衣舍"><img src="images/banner4.jpg" alt="淘宝韩都衣舍"/></a></li>
			                </ul>
			  <ul class="num" id="idNum2">
              				<li>1</li>
			  				<li>2</li>
			  				<li>3</li>
			  				<li>4</li>
			  			                </ul>
			 
						</div>
            
            			
            
            			<div class="breanlist">
                        	<ul>
                                <li><a href=""><img src="images/brand01.jpg" border="0"></a></li><li><a href=""><img src="images/brand02.jpg" border="0"></a></li><li><a href=""><img src="images/brand03.jpg" border="0"></a></li>
                                <li><a href=""><img src="images/brand04.jpg" border="0"></a></li>
                                <li><a href=""><img src="images/brand05.jpg" border="0"></a></li>
                                <li><a href=""><img src="images/brand06.jpg" border="0"></a></li>
                                <li><a href=""><img src="images/brand01.jpg" border="0"></a></li>
                                <li><a href=""><img src="images/brand02.jpg" border="0"></a></li>
                                <li><a href=""><img src="images/brand03.jpg" border="0"></a></li>
                                <li><a href=""><img src="images/brand04.jpg" border="0"></a></li>
                            
                              </ul>
            			</div>
            
            
            	</div>
             
            </div>
            
            <div class="cx-right left">
            <div class="cx-rpart left">
            
               
                 <div class="cx-rcen">
                	<h3><span>商品最新降价信息</span></h3>
                   <div id="pic_list_4" class="scroll_vertical">
			<div class="box">
				<ul class="list">
					<li><div style="float: left;"><a href="#"><img src="img/temp_pic_1.jpg" width="90px" height="90px"></a></div><div style="float: left;"><a>用户评价</a> <br/><a>物流水平</a><br/><a>降价:</a></div><br/><a>1小时前</a><br/><a>卖家</a></li>
					<li><div style="float: left;"><a href="#"><img src="img/temp_pic_2.jpg" width="90px" height="90px"></a></div><div style="float: left;"><a>用户评价</a> <br/><a>物流水平</a><br/><a>降价:</a></div><br/><a>1小时前</a><br/><a>卖家</a></li>
					<li><div style="float: left;"><a href="#"><img src="img/temp_pic_3.jpg" width="90px" height="90px"></a></div><div style="float: left;"><a>用户评价</a> <br/><a>物流水平</a><br/><a>降价:</a></div><br/><a>1小时前</a><br/><a>卖家</a></li>
					<li><div style="float: left;"><a href="#"><img src="img/temp_pic_4.jpg" width="90px" height="90px"></a></div><div style="float: left;"><a>用户评价</a> <br/><a>物流水平</a><br/><a>降价:</a></div><br/><a>1小时前</a><br/><a>卖家</a></li>
					<li><div style="float: left;"><a href="#"><img src="img/temp_pic_1.jpg" width="90px" height="90px"></a></div><div style="float: left;"><a>用户评价</a> <br/><a>物流水平</a><br/><a>降价:</a></div><br/><a>1小时前</a><br/><a>卖家</a></li>
				</ul>
			</div>
		</div>
                </div>
                
                
                <div class="bgindex cx-rbot"></div>
               
               </div>
               
               
               
               
               
              
                
            </div>
    
    
    </div>

</div>






<div class="widthin widthjuzhong">
<div class="kongbai"></div>
    <div class="good_part">
    
    
    <div class="good_dp">
      <div class="good_dptop">
        <h3>户外鞋服</h3>
      </div>
      <div class="good_dpcon">
        <ul id="gallery" class="dptop">
          <li><a href="" class="smallimage" rel="images/001_big.jpg"><img src="images/p1.gif"/>相宜本草旗舰店</a> </li>
          <li><a href="" class="smallimage" rel="images/p1.gif" target="_blank"><img src="images/p2.gif"/>芳草集官方旗舰</a> </li>
          <li><a href="" target="_blank"><img src="images/p3.gif"/>淘宝排名第一 柠檬绿茶</a> </li>
          <li><a href="" target="_blank"><img src="images/p4.gif"/>西溪漫步 美容护肤卖场</a> </li>
          <li><a href="" target="_blank"><img src="images/p5.gif"/>嘟嘟鱼嘟 美容护肤专卖</a> </li>
          <li><a href="" target="_blank"><img src="images/p6.gif"/>上海闺秀名妆 即送红包</a> </li>
          <li><a href="" target="_blank"><img src="images/p7.gif"/>舒友阁 功能美容护肤</a> </li>
          <li><a href="" target="_blank"><img src="images/p8.gif"/>舒友阁 功能美容护肤</a> </li>
           <li><a href="" target="_blank"><img src="images/p9.gif"/>华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
        </ul>
      
      </div>

    </div>
    
    
    <div class="good_cpl">
      <div class="good_cpltop">
        <h3 class="left">精选推荐</h3>
        <span class="right"><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a></span></div>
      <div class="good_cplcon">
        
        
        <dl class="good_cplist">
        <%
			List<Recomm> recomm_outdoor = (List) request.getAttribute("recomm_outdoor");
			for (Recomm recomm_out : recomm_outdoor) {
		%> 
          <dd class="goods_list">
            
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="<%=recomm_out.getAddr() %>" target="_blank" onfocus="this.blur()"><img src="<%=recomm_out.getImage() %>" border="0"></a> </div>
            
            <div class="goods_list_price">
         <strong style="display: block;overflow: hidden;white-space: nowrap;color: #EE5A00;width: 144px;text-overflow: ellipsis;"><%=recomm_out.getDescribe() %></strong>
             <strong style="display: block;overflow: hidden;white-space: nowrap;color: #EE5A00;width: 144px;text-overflow: ellipsis;"><%=recomm_out.getDescribe() %></strong>
           
              <span class="goods_list_tbprice left"><b><%=recomm_out.getGoodsname() %></b></span> <span class="right fontsize12 fontcolorgreen"><%=recomm_out.getPrice() %></span> </div>
          </dd>
          <%} %>
          
        </dl>
		</div>
        
        
        
      </div>
   
    </div>	
    	
    	
    	<div class="kongbai"></div>
    
    
    
     <div class="good_part">
    	
    <div class="good_dp">
      <div class="good_dptop">
        <h3>图书</h3>
      </div>
      <div class="good_dpcon">
         <ul id="gallery" class="dptop">
          <li><a href="" class="smallimage" rel="images/001_big.jpg">1,三星 S7562 下单有优惠！</a> </li>
          <li><a href="" target="_blank">2,诺基亚 Lumia 710 ，货源充</a> </li>
          <li><a href="" target="_blank">3,华为 T8830pro 极速双核！</a> </li>
          <li><a href="" target="_blank">4,飞利浦（PHILIPS）X523 GSM手机（黑色）</a> </li>
          <li><a href="" target="_blank">5,海尔 小潜艇 W718 3G手机</a> </li>
          <li><a href="" target="_blank">6,联想 K860 四核 3G手机（星夜黑）</a> </li>
          <li><a href="" target="_blank">7,三星（SAMSUNG）S7562 3G手机（纯白）WCDMA/GSM 双卡双待</a> </li>
          <li><a href="" target="_blank">8,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          <li><a href="" target="_blank">9,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          
        </ul>
       
      </div>

    </div>
    
    
    <div class="good_cpl">
      <div class="good_cpltop">
        <h3 class="left">精选推荐</h3>
        <span class="right"><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a></span></div>
      <div class="good_cplcon">
        
        
       <dl class="good_cplist">
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
           <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
        </dl>
		</div>
        
        
        
      </div>
    </div>
    
    <div class="kongbai"></div>
    
    
    
     <div class="good_part">
    
    
    <div class="good_dp">
      <div class="good_dptop">
        <h3>手机数码</h3>
      </div>
      <div class="good_dpcon">
         <ul id="gallery" class="dptop">
          <li><a href="" class="smallimage" rel="images/001_big.jpg">1,三星 S7562 下单有优惠！</a> </li>
          <li><a href="" target="_blank">2,诺基亚 Lumia 710 ，货源充</a> </li>
          <li><a href="" target="_blank">3,华为 T8830pro 极速双核！</a> </li>
          <li><a href="" target="_blank">4,飞利浦（PHILIPS）X523 GSM手机（黑色）</a> </li>
          <li><a href="" target="_blank">5,海尔 小潜艇 W718 3G手机</a> </li>
          <li><a href="" target="_blank">6,联想 K860 四核 3G手机（星夜黑）</a> </li>
          <li><a href="" target="_blank">7,三星（SAMSUNG）S7562 3G手机（纯白）WCDMA/GSM 双卡双待</a> </li>
          <li><a href="" target="_blank">8,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          <li><a href="" target="_blank">9,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          
        </ul>
       
      </div>

    </div>
    
    
    <div class="good_cpl">
      <div class="good_cpltop">
        <h3 class="left">精选推荐</h3>
        <span class="right"><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a></span></div>
      <div class="good_cplcon">
        
        
       <dl class="good_cplist">
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
           <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
        </dl>
		</div>
        
        
        
      </div>
   
    </div>	
    	
    
    <div class="kongbai"></div>
    
    
    
     <div class="good_part">
    
    
    <div class="good_dp">
      <div class="good_dptop">
        <h3>电脑整机</h3>
      </div>
      <div class="good_dpcon">
         <ul id="gallery" class="dptop">
          <li><a href="" class="smallimage" rel="images/001_big.jpg">1,三星 S7562 下单有优惠！</a> </li>
          <li><a href="" target="_blank">2,诺基亚 Lumia 710 ，货源充</a> </li>
          <li><a href="" target="_blank">3,华为 T8830pro 极速双核！</a> </li>
          <li><a href="" target="_blank">4,飞利浦（PHILIPS）X523 GSM手机（黑色）</a> </li>
          <li><a href="" target="_blank">5,海尔 小潜艇 W718 3G手机</a> </li>
          <li><a href="" target="_blank">6,联想 K860 四核 3G手机（星夜黑）</a> </li>
          <li><a href="" target="_blank">7,三星（SAMSUNG）S7562 3G手机（纯白）WCDMA/GSM 双卡双待</a> </li>
          <li><a href="" target="_blank">8,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          <li><a href="" target="_blank">9,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          
        </ul>
       
      </div>

    </div>
    
    
    <div class="good_cpl">
      <div class="good_cpltop">
        <h3 class="left">精选推荐</h3>
        <span class="right"><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a></span></div>
      <div class="good_cplcon">
        
        
       <dl class="good_cplist">
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
           <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
        </dl>
		</div>
        
        
        
      </div>
   
    </div>	
    
    <div class="kongbai"></div>
    
    
    
     <div class="good_part">
    
    
    <div class="good_dp">
      <div class="good_dptop">
        <h3>电脑配件</h3>
      </div>
      <div class="good_dpcon">
         <ul id="gallery" class="dptop">
          <li><a href="" class="smallimage" rel="images/001_big.jpg">1,三星 S7562 下单有优惠！</a> </li>
          <li><a href="" target="_blank">2,诺基亚 Lumia 710 ，货源充</a> </li>
          <li><a href="" target="_blank">3,华为 T8830pro 极速双核！</a> </li>
          <li><a href="" target="_blank">4,飞利浦（PHILIPS）X523 GSM手机（黑色）</a> </li>
          <li><a href="" target="_blank">5,海尔 小潜艇 W718 3G手机</a> </li>
          <li><a href="" target="_blank">6,联想 K860 四核 3G手机（星夜黑）</a> </li>
          <li><a href="" target="_blank">7,三星（SAMSUNG）S7562 3G手机（纯白）WCDMA/GSM 双卡双待</a> </li>
          <li><a href="" target="_blank">8,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          <li><a href="" target="_blank">9,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          
        </ul>
       
      </div>

    </div>
    
    
    <div class="good_cpl">
      <div class="good_cpltop">
        <h3 class="left">精选推荐</h3>
        <span class="right"><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a></span></div>
      <div class="good_cplcon">
        
        
       <dl class="good_cplist">
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
           <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
        </dl>
		</div>
        
        
        
      </div>
   
    </div>	
    
    <div class="kongbai"></div>
    
    
    
     <div class="good_part">
    
    
    <div class="good_dp">
      <div class="good_dptop">
        <h3>运动产品</h3>
      </div>
      <div class="good_dpcon">
         <ul id="gallery" class="dptop">
          <li><a href="" class="smallimage" rel="images/001_big.jpg">1,三星 S7562 下单有优惠！</a> </li>
          <li><a href="" target="_blank">2,诺基亚 Lumia 710 ，货源充</a> </li>
          <li><a href="" target="_blank">3,华为 T8830pro 极速双核！</a> </li>
          <li><a href="" target="_blank">4,飞利浦（PHILIPS）X523 GSM手机（黑色）</a> </li>
          <li><a href="" target="_blank">5,海尔 小潜艇 W718 3G手机</a> </li>
          <li><a href="" target="_blank">6,联想 K860 四核 3G手机（星夜黑）</a> </li>
          <li><a href="" target="_blank">7,三星（SAMSUNG）S7562 3G手机（纯白）WCDMA/GSM 双卡双待</a> </li>
          <li><a href="" target="_blank">8,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          <li><a href="" target="_blank">9,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          
        </ul>
       
      </div>

    </div>
    
    
    <div class="good_cpl">
      <div class="good_cpltop">
        <h3 class="left">精选推荐</h3>
        <span class="right"><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a></span></div>
      <div class="good_cplcon">
        
        
       <dl class="good_cplist">
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
           <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
        </dl>
		</div>
        
        
        
      </div>
   
    </div>	
    
    <div class="kongbai"></div>
    
    
    
     <div class="good_part">
    
    
    <div class="good_dp">
      <div class="good_dptop">
        <h3>化妆护肤品</h3>
      </div>
      <div class="good_dpcon">
         <ul id="gallery" class="dptop">
          <li><a href="" class="smallimage" rel="images/001_big.jpg">1,三星 S7562 下单有优惠！</a> </li>
          <li><a href="" target="_blank">2,诺基亚 Lumia 710 ，货源充</a> </li>
          <li><a href="" target="_blank">3,华为 T8830pro 极速双核！</a> </li>
          <li><a href="" target="_blank">4,飞利浦（PHILIPS）X523 GSM手机（黑色）</a> </li>
          <li><a href="" target="_blank">5,海尔 小潜艇 W718 3G手机</a> </li>
          <li><a href="" target="_blank">6,联想 K860 四核 3G手机（星夜黑）</a> </li>
          <li><a href="" target="_blank">7,三星（SAMSUNG）S7562 3G手机（纯白）WCDMA/GSM 双卡双待</a> </li>
          <li><a href="" target="_blank">8,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          <li><a href="" target="_blank">9,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          
        </ul>
       
      </div>

    </div>
    
    
    <div class="good_cpl">
      <div class="good_cpltop">
        <h3 class="left">精选推荐</h3>
        <span class="right"><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a></span></div>
      <div class="good_cplcon">
        
        
       <dl class="good_cplist">
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
           <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
        </dl>
		</div>
        
        
        
      </div>
   
    </div>	
    
    <div class="kongbai"></div>
    
    
    
     <div class="good_part">
    
    
    <div class="good_dp">
      <div class="good_dptop">
        <h3>礼品箱包</h3>
      </div>
      <div class="good_dpcon">
         <ul id="gallery" class="dptop">
          <li><a href="" class="smallimage" rel="images/001_big.jpg">1,三星 S7562 下单有优惠！</a> </li>
          <li><a href="" target="_blank">2,诺基亚 Lumia 710 ，货源充</a> </li>
          <li><a href="" target="_blank">3,华为 T8830pro 极速双核！</a> </li>
          <li><a href="" target="_blank">4,飞利浦（PHILIPS）X523 GSM手机（黑色）</a> </li>
          <li><a href="" target="_blank">5,海尔 小潜艇 W718 3G手机</a> </li>
          <li><a href="" target="_blank">6,联想 K860 四核 3G手机（星夜黑）</a> </li>
          <li><a href="" target="_blank">7,三星（SAMSUNG）S7562 3G手机（纯白）WCDMA/GSM 双卡双待</a> </li>
          <li><a href="" target="_blank">8,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          <li><a href="" target="_blank">9,华为（HUAWEI）Ascend G330D（U8825D）3G手机（深灰色）WCDMA/GSM </a> </li>
          
        </ul>
       
      </div>

    </div>
    
    
    <div class="good_cpl">
      <div class="good_cpltop">
        <h3 class="left">精选推荐</h3>
        <span class="right"><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a><a href="">潮品牌</a></span></div>
      <div class="good_cplcon">
        
        
       <dl class="good_cplist">
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <b>asdsad</b>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
          <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
          
           <dd class="goods_list">
            <div class="goods_list_title"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()">新款春夏复古修身百搭小脚裤显瘦哈伦裤 韩版休闲女裤加大码工装</a> </div>
            <div class="goods_list_img" onMouseOver="this.className='goods_list_img_hover'" onMouseOut="this.className='goods_list_img'"> <a href="goods-item-16377148382.html" target="_blank" onfocus="this.blur()"><img src="images/cptu3.jpg" border="0"></a> </div>
            <div class="goods_list_price">
            <a>asdsad</a>
            <br/>
              <span class="goods_list_tbprice left">￥<b>82.0</b></span> <span class="right fontsize12 fontcolorgreen">已售:100件</span> </div>
          </dd>
        </dl>
		</div>
        
        
        
      </div>
   
    </div>	
    
    
    
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
