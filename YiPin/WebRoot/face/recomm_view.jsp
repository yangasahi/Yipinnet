<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'recomm_view.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/css.css">


  </head>
  
  <body>
  <div align="center">
   <h2>请根据自己需要的查询方式进行查询</h2>
    <form action="FaceServlet?flag=recomment" method="post">
        <table>
        
         <tr>
           <td> 查询条件：</td>
           <td><select name="condition">
                     <option value="all">所有</option>
                    <option value="book">图书</option>
                    <option value="cosmetic">化妆护肤品</option>
                    <option value="outdoor">户外鞋服</option>
                    <option value="digital">手机数码</option>
                    <option value="computer">电脑整机</option>
                    <option value="fitting">电脑配件</option>
                    <option value="gift">礼品箱包</option>
                    <option value="sports">运动产品</option>
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
