<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">
     <script type="text/javascript">
   
      function clearDefaultText (el,message)
{
var obj = el;
if(typeof(el) == "string")
obj = document.getElementById(id);
if(obj.value == message)
{
obj.value = "";
}
obj.onblur = function()
{
if(obj.value == "")
{
   obj.value = message;
}
}
}
   </script>
  </head>
  
  <body>
    <div id="user_header">
        <div id="user_control">
            <ul class="menu_header">
                <li class="menu_phone"><a href="" rel="nofollow" target="_blank"><span class="arrow"></span>新手帮助</a>|</li>
                <li class="menu_intro"><a href="" target="_blank"><span class="arrow"></span>物品收藏夹</a>|</li>
                <li class="menu_stow"><a href="javascript:void(0)" rel="nofollow" id="bookmark_us"><span class="arrow"></span>加入收藏</a>|</li>
                <li id="my_jumei_attention_link">
                    <a href="" >新浪微博<span class="mycorn"></span></a>
                   
                </li>
            </ul>
            <ul class="login_header">
           <%
             String username = (String)request.getSession().getAttribute("username");
             if(username==null){
            %>
                                    <li class="thickbox"><a href="UserServlet?flag=user_regist">注册</a></li>
                    <li><a href="UserServlet?flag=user_login">登录</a>|</li>
                    
                    <li class="left">&nbsp;</li>
                    <%}else{ %>
                    
                    <li><a href="UserServlet?flag=user_logout">&nbsp;&nbsp;退出</a></li>
                    <li><b style="color: #FF7800">欢迎您：<a ><%=username %></a></b></li>
                    <%} %>
                   
                                </ul>
        </div>
    </div>



<div class="header">
				<div class="header_resize">
					<div class="logo">
					
							<div style="float: left;"><a href="YipinIndex.jsp"><img style="padding-left: 24px;" src="images/logo.png"></img></a></div>
							
							<form action="">
							<div style="margin-top:25px;float:left;margin-left: 100px;height: 16px;padding: 10px 2px;overflow: hidden; background-position: 0 -357px; background-color: #2CADFF;">
							
							<input type="text"  value="new pad" onclick="clearDefaultText(this,'new pad')" style="float:left;border: none;margin: -7px 0 0 1px;width: 406px;position: relative;z-index: 1;height: 30px;padding: 5px;background-position: 0 -360px;background-color: white;background-repeat: repeat-x;line-height: 20px;color: #999;font-size: 14px;"> 
							<input type="submit" value="搜 索" style="cursor:pointer;  margin-top: -7px;float:left;border: none;height: 30px;position: relative;z-index: 1;width: 78px;background-position: 0 -395;background-color: #2CADFF;font-size: 16px;font-weight: bold;color: white;">
						
							</div>
							</form>
						
					</div>
					<div class="clr"></div>
					<div class="menu_nav">
						<ul>
						<%
						  String item = (String)request.getAttribute("item");
						  if(Integer.parseInt(item)==0){
                          %>
                            <li>
								<a href="YipinServlet?flag=top">Top100</a>
							</li>
							<li >
								<a href="FaceServlet?flag=bijia">比价商城</a>
							</li>
							<li>
								<a href="FaceServlet?flag=return">返利专区</a>
							</li>
							<li>
								<a href="FaceServlet?flag=reputation">用户口碑</a>
							</li>
							<li>
								<a href="FaceServlet?flag=coupons">优惠劵</a>
							</li>
						<%}else if(Integer.parseInt(item)==1){ %>
						 <li class="active">
								<a href="YipinServlet?flag=top">Top100</a>
							</li>
							<li>
								<a href="FaceServlet?flag=bijia">比价商城</a>
							</li>
							<li>
								<a href="FaceServlet?flag=return">返利专区</a>
							</li>
							<li>
								<a href="FaceServlet?flag=reputation">用户口碑</a>
							</li>
							<li>
								<a href="FaceServlet?flag=coupons">优惠劵</a>
							</li>
						<%}else if(Integer.parseInt(item)==2){ %>
						 <li>
								<a href="YipinServlet?flag=top">Top100</a>
							</li>
							<li class="active">
								<a href="FaceServlet?flag=bijia">比价商城</a>
							</li>
							<li>
								<a href="FaceServlet?flag=return">返利专区</a>
							</li>
							<li>
								<a href="FaceServlet?flag=reputation">用户口碑</a>
							</li>
							<li>
								<a href="FaceServlet?flag=coupons">优惠劵</a>
							</li>
						<%}else if(Integer.parseInt(item)==3){ %>
						 <li>
								<a href="YipinServlet?flag=top">Top100</a>
							</li>
							<li>
								<a href="FaceServlet?flag=bijia">比价商城</a>
							</li>
							<li class="active">
								<a href="FaceServlet?flag=return">返利专区</a>
							</li>
							<li>
								<a href="FaceServlet?flag=reputation">用户口碑</a>
							</li>
							<li>
								<a href="FaceServlet?flag=coupons">优惠劵</a>
							</li>
						<%}else if(Integer.parseInt(item)==4){ %>
						 <li>
								<a href="YipinServlet?flag=top">Top100</a>
							</li>
							<li>
								<a href="FaceServlet?flag=bijia">比价商城</a>
							</li>
							<li>
								<a href="FaceServlet?flag=return">返利专区</a>
							</li>
							<li class="active">
								<a href="FaceServlet?flag=reputation">用户口碑</a>
							</li>
							<li>
								<a href="FaceServlet?flag=coupons">优惠劵</a>
							</li>
						<%}else if(Integer.parseInt(item)==5){ %>
						 <li>
								<a href="YipinServlet?flag=top">Top100</a>
							</li>
							<li>
								<a href="FaceServlet?flag=bijia">比价商城</a>
							</li>
							<li>
								<a href="FaceServlet?flag=return">返利专区</a>
							</li>
							<li>
								<a href="FaceServlet?flag=reputation">用户口碑</a>
							</li>
							<li class="active">
								<a href="FaceServlet?flag=coupons">优惠劵</a>
							</li>
						<%} %>
						</ul>
						<div class="searchform">
							
						</div>
					</div>
					<div class="clr"></div>
				</div>
			</div>
  </body>
</html>
