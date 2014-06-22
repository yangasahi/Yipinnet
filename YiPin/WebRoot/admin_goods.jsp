<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.yipin.model.Goods" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_goods.jsp' starting page</title>
    
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
		                                                商品ID
		                </th>
		                <th>
		                                                商品名称
		                </th>
		                <th>
		                                                 商品介绍
		                </th>
		                <th>
		                                                 图片地址
		                </th>
		                <th>
		                                                 商品地址
		                </th>
		                <th>
		                                                 商品类型
		                </th>
		                <th>操作指令</th>
		                
		           </tr>
		           
		                 <%
	  		                List<Goods> list=(List)request.getAttribute("list");        
	  		                for(Goods goods : list){
	  		             %>
		                  <tr>
		                     <td>
		                        <%=goods.getGoodsid() %>

		                     </td>
		                     <td>
		                         <%=goods.getGoodsname() %>
		                     </td>
		                      <td>
		                         <%=goods.getIntroduce() %>
		                     </td>
		                      <td>
		                         <%=goods.getImage() %>
		                     </td>
		                      <td>
		                         <%=goods.getAddr() %>
		                     </td>
		                     <td>
		                         <%=goods.getTypename() %>
		                     </td>
		                     
		                     <td>
		                      <div align="center"> 
		                           <a href="GoodsServlet?flag=del&goodsid=<%=goods.getGoodsid() %>"
		                                  onclick="if (confirm('确定要删除吗？'))return true;else return false;">删除</a>
		                           <a href="GoodsServlet?flag=preupdate&goodsid=<%=goods.getGoodsid() %>">修改</a>
		                           <a href="GoodsServlet?flag=price_view&goodsid=<%=goods.getGoodsid() %>">价格</a>
		                           <a href="GoodsServlet?flag=comment_view&goodsid=<%=goods.getGoodsid() %>">评价</a>
		                         </div>
		                   
		                     </td>
		                  </tr>
		             <%
	 	      }
	            %>
		     </table>
  </body>
</html>
