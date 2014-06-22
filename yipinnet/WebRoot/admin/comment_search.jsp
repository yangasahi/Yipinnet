<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'comment_search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/css.css">
	

  </head>
  
  <body>
  <div align="center">
    <h2>请输入要查询的内容，并选择所属类型</h2>
    <form action="CommentServlet?flag=comm_sear" method="post">
        <table>
        
         <tr>
           <td> 查询条件：</td>
           <td><select name="condition">
                    <option value="username">用户名</option>
                    <option value="goodsid">商品ID</option>
                 </select> 
           </td>
           <td> <input type="text" name="search_content"> </td>
         </tr>
        <tr>
          <td> <input type="submit" value="提交">  </td>
          <td> <input type="reset" value="重置">  </td>
        </tr>
        </table>
        
    </form>
    </div>
  </body>
</html>
