<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>仪品网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/css.css">
     <script type="text/javascript">
        var im1=true;
        var im2=true;
        var im3=true;
        function openOrClose(p1,p2){
          if(im1){
             p1.src="images/close.gif";
             im1=false;
             p2.style.display="none";
          }else{
             p1.src="images/open.gif";
             im1=true;
             p2.style.display="block";
          }
        }
        function openOrClose1(p1,p2){
           if(im2){
             p1.src="images/close.gif";
             im2=false;
             p2.style.display="none";
           }else{
             p1.src="images/open.gif";
             im2=true;
             p2.style.display="block";
           }
        }
        function openOrClose2(p1,p2){
				if (im3){
					p1.src="images/close.gif";
					im3=false;
					p2.style.display="none";
				}else{
					p1.src="images/open.gif";
					im3=true;
					p2.style.display="block";
				}	
			}
     </script>

  </head>
  
  <body background="images/left_bg.gif">
    <span class="hand" onclick="openOrClose(document.all.img1,document.all.child1)">
       <img src="images/open.gif" id="img1">
    </span>
    <font color="#FFFFFF">
                          会员管理
      </font>
      <div style="display: block" id="child1">
         &nbsp;&nbsp;
         <img src="images/jian.gif">
         &nbsp;&nbsp;
         <a href="UserServlet?flag=view" target="mainFrame">所有用户</a>
         <br>
         &nbsp;&nbsp;
         <img src="images/jian.gif"/>
         &nbsp;&nbsp;
         <a href="UserServlet?flag=regist" target="mainFrame">增加用户</a>
      </div>
      <br/>
      
      <span class="hand" 
           onclick="openOrClose1(document.all.img2,document.all.child2)">
              <img src="images/open.gif" id="img2">
      </span>
      <font color="#FFFFFF">
                       商品管理
      </font>
      <div style="display: block" id="child2">
          &nbsp;&nbsp;
          <img src="images/jian.gif">
          &nbsp;&nbsp;
       <a href="GoodsServlet?flag=view" target="mainFrame">所有商品</a>
       <br>
       &nbsp;&nbsp;
       <img src="images/jian.gif"/>
       &nbsp;&nbsp;
       <a href="GoodsServlet?flag=add" target="mainFrame">扫描增加商品</a>
       <br>
       &nbsp;&nbsp;
       <img src="images/jian.gif"/>
       &nbsp;&nbsp;
       <a href="YipinServlet?flag=view" target="mainFrame">TOP100</a>
       <br>
       &nbsp;&nbsp;
       <img src="images/jian.gif">
       &nbsp;&nbsp;
       <a href="ScanServlet?flag=scan" target="mainFrame">扫描商品价格</a>
        <br>
       &nbsp;&nbsp;
       <img src="images/jian.gif">
       &nbsp;&nbsp;
       <a href="YipinServlet?flag=addkey" target="mainFrame">关键字扩展</a>
        <br>
       &nbsp;&nbsp;
       <img src="images/jian.gif">
       &nbsp;&nbsp;
       <a href="GoodsServlet?flag=scanitems" target="mainFrame">物品扩展</a>
        <br>
       &nbsp;&nbsp;
       <img src="images/jian.gif">
       &nbsp;&nbsp;
       <a href="GoodsServlet?flag=addTop100" target="mainFrame">增加Top100</a>
      </div>
      <br/>
      
      <span class="hand" onclick="openOrClose1(document.all.img1,document.all.child1)">
       <img src="images/open.gif" id="img1">
    </span>
    <font color="#FFFFFF">
                          评论管理
      </font>
      <div style="display: block" id="child1">
         &nbsp;&nbsp;
         <img src="images/jian.gif">
         &nbsp;&nbsp;
         <a href="CommentServlet?flag=view" target="mainFrame">所有评论</a>
         <br>
         &nbsp;&nbsp;
         <img src="images/jian.gif"/>
         &nbsp;&nbsp;
         <a href="CommentServlet?flag=comm_search" target="mainFrame">查找评论</a>
      </div>
      <br/>
      
      <span class="hand" onclick="openOrClose1(document.all.img1,document.all.child1)">
       <img src="images/open.gif" id="img1">
    </span>
   
       <span class="hand"
           onclick="openOrClose2(document.all.img3,document.all.child3)">
           <img src="images/open.gif" id="img3">
        </span>
        <font color="#FFFFFF">
                              其他操作
        </font>
        <div style="display: block" id="child3">
          &nbsp;&nbsp;
          <img src="images/jian.gif">
          &nbsp;&nbsp;
          <a href="UserServlet?flag=update_pwd" target="mainFrame">修改密码</a>
          <br>
          &nbsp;&nbsp;
          <img src="images/jian.gif">
          &nbsp;&nbsp;
          <a href="UserServlet?flag=logout" target="_top">安全退出</a>
        </div>
      
  </body>
</html>
