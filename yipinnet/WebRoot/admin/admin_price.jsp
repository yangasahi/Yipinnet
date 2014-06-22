<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.yipinnet.model.Price" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_price.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/css.css">

     <script type="text/javascript">
            function doDelCheck(){
               if(confirm('确定要删除吗？')){
                    fom1.submit();
               }else{
                 return false;
               }
            }
     </script>

  </head>
  
  <body>
    <table align="center" width="95%" border="1" cellpadding="2" cellspacing="0">
		           <tr class="title">
		                
		                <th>
		                                                商品价格ID
		                </th>
		                <th>
		                                                商品价格
		                </th>
		                <th>
		                                                 更新时间
		                </th>
		                <th>
		                                                 商品ID
		                </th>
		       
		                
		           </tr>
		           
		                 <%
	  		                List<Price> list=(List)request.getAttribute("list");        
	  		                for(Price price : list){
	  		             %>
		                  <tr>
		                     <td>
		                        <%=price.getGoodspriceid() %>

		                     </td>
		                     <td>
		                         <%=price.getGoodsprice() %>
		                     </td>
		                      <td>
		                         <%=price.getPricetime() %>
		                     </td>
		                      <td>
		                         <%=price.getGoodsid() %>
		                     </td>
		                      
		                    
		                  </tr>
		             <%
	 	      }
	            %> 
		     </table>
  </body>
</html>
